utilities
render: anObject
	anObject isString 
		ifTrue: [ ^ anObject ].
	^ String streamContents: [ :stream |
		self render: anObject on: stream ]