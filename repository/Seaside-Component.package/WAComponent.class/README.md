I am a class representing a graphical element of a seaside application. A component has state (instance variables, that might be backtracked using #states), behavior decorations, children and an appearance that is specified in #renderContentOn:. A component might chose to display another component with #call:.

Child Components:
It is common for a component to display instances of other components while rendering itself.  It does this by passing them into the #render: method of WACanvas.  For example, this #renderContentOn: method simply renders a heading and then displays a counter component 
immediately below it:

	renderContentOn: html
		html heading level3; with: 'My Counter'.
		html render: myCounter.

It's important that you use #render:, rather than directly calling the #renderContentOn: method of the subcomponent. The following is *not* correct:

	renderContentOn: html
		html heading level3; with: 'My Counter'.
		myCounter renderContentOn: html.   "DON'T DO THIS".

These subcomponents are usually instance variables of the component that is "embedding" them.  They are commonly created as part of the components #initialize method:

	initialize
		myCounter := WACounter new.

They may also be stored in a collection. One fairly common pattern is to keep a lazily initialized dictionary of subcomponents that match a collection of model items. For example, if you wanted a BudgetItemRow subcomponent for each member of budgetItems, you might do something like this:

	initialize
		budgetRows := Dictionary new.

	rowForItem: anItem
		^budgetRows at: anItem ifAbsentPut: [ BudgetItemRow item: anItem ].

	renderContentOn: html
		self budgetItems
			do: [ :each | html render: (self rowForItem: each) ]
			separatedBy: [ html horizontalLine ].

Each parent component *must* implement a #children method that returns a collection of all of the subcomponents that it might display on the next render. For the above two examples, #children might look like this:

	children
		^Array with: myCounter

or this:

	children
		^self budgetItems collect: [ :each | self rowForItem: each ].
		
Call/Answer:
If a subcomponent makes a #call: to another component, that component will appear in place of the subcomponent.  In the first example, if myCounter made a #call: to DateSelector, that DateSelector would appear in the context of the counter's parent, with the 'My Counter' heading 
above it.

Since a subcomponent has not been #call:'d, in general #answer: is a no-op.  However, the parent may attach an #onAnswer: block to the subcomponent to be notified if it sends #answer:. This allows one component to be used both from #call: and through embedding. For example:

	initialize
		dateSelector := WADateSelector new 
			onAnswer: [ :date | self dateChosen: date ].
			
Visibility:
A component is visible if
- it is the root component of an application
- a child of of a visible component (returned by #children) that has not been #call:'d
- passed as an argument to #call: on a visible component