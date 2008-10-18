seaside
doesNotSendSuperInitialize
	^ self new
		name: 'Does not send super';
		rationale: 'Always send super when overriding specific hook methods.';
		methodBlock: [ :context :result |
			| class selectors |
			class := context selectedClass allSuperclasses
				detect: [ :each | Slime superSelectors includesKey: each name ]
				ifNone: [ Object ].
			selectors := Slime superSelectors at: class name ifAbsent: [ #() ].
			((selectors includes: context selector)
				and: [ (context parseTree superMessages includes: context selector) not ])
				ifTrue: [ result addClass: context selectedClass selector: context selector ] ]