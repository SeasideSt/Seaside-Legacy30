accessing
selectors
	^ (category isNil
		ifTrue: [ class selectors ]
		ifFalse: [ class organization listAtCategoryNamed: category ])
			asSortedCollection