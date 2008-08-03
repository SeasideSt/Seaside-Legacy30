I am a presenter with the additional abilities of wrapping myself with behavior decorations and displaying another component with #call:.
		
Call/Answer:
If a subcomponent makes a #call: to another component, that component will appear in place of the subcomponent.  For example, if an embedded WACounter, stored in an instance variable called myCounter, made a #call: to DateSelector, that DateSelector would appear in the context of the counter's parent, with the 'My Counter' heading above it.

Since an embedded subcomponent has not been #call:'d, in general #answer: is a no-op.  However, the parent may attach an #onAnswer: block to the embedded subcomponent to be notified if it sends #answer:. This allows one component to be used both from #call: and through embedding. For example:

	initialize
		dateSelector := WADateSelector new 
			onAnswer: [ :date | self dateChosen: date ].
			
Visibility:
A component is visible if it:
- meets the visibility requirements of a Presenter; or
- is passed as an argument to #call: on a visible component