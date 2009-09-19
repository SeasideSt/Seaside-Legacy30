accessing
selectors
	^ (protocol isNil 
		ifTrue: [ class selectors ]
		ifFalse: 
			[ [ class organization listAtCategoryNamed: protocol ] 
				on: Error
				do: [ :err | class selector ] ]) asSortedCollection