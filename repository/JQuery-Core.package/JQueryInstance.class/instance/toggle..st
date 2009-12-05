effects
toggle: anObject
	"Toggle displaying each of the set of matched elements based upon the switch (true shows all elements, false hides all elements). Or, toggle among two or more function calls every other click."
	
	(anObject isCollection and: [ anObject isString not ])
		ifTrue: [ self call: 'toggle' withArguments: (anObject collect: [ :each | each asFunction ]) ]
		ifFalse: [ self call: 'toggle' with: anObject ]