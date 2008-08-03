WAPresenter is a concrete subclass of WAAbstractPresenter supporting the ability to "embed" other presenters within itself. A Presenter can be embedded within another Presenter (or any subclass such as WAComponent or WATask). It may also be used as the "root" of a WAApplication. WAPresenter does not support call/answer or the addition of Decorations. If you need either of these features, you should subclass WAComponent instead.

Child Components:
It is common for a Presenter to display instances of other Presenters while rendering itself.  It does this by passing them into the #render: method of WACanvas.  For example, this #renderContentOn: method simply renders a heading and then displays a counter component 
immediately below it:

	renderContentOn: html
		html heading level3; with: 'My Counter'.
		html render: myCounter.

It's important that you use #render:, rather than directly calling the #renderContentOn: method of the subcomponent. The following is *not* correct:

	renderContentOn: html
		html heading level3; with: 'My Counter'.
		myCounter renderContentOn: html.   "DON'T DO THIS".

These subcomponents are usually instance variables of the Presenter that is "embedding" them.  They are commonly created as part of the component'ss #initialize method:

	initialize
		myCounter := WACounter new.

They may also be stored in a collection. One fairly common pattern is to keep a lazily initialized dictionary of sub-presenters that match a collection of model items. For example, if you wanted a BudgetItemRow subcomponent for each member of budgetItems, you might do something like this:

	initialize
		budgetRows := Dictionary new.

	rowForItem: anItem
		^budgetRows at: anItem ifAbsentPut: [ BudgetItemRow item: anItem ].

	renderContentOn: html
		self budgetItems
			do: [ :each | html render: (self rowForItem: each) ]
			separatedBy: [ html horizontalLine ].

Each parent Presenter *must* implement a #children method that returns a collection of all of the sub-presenters that it might display on the next render. For the above two examples, #children might look like this:

	children
		^Array with: myCounter

or this:

	children
		^self budgetItems collect: [ :each | self rowForItem: each ].
		
Visibility:
A Presenter is visible if
- it is the root of an application
- a child of a visible Presenter (returned by #children) that has not been #call:'d