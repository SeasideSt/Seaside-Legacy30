private
iteratorFor: anObject
	| result |
	anObject isBlock
		ifFalse: [ ^ anObject asFunction return: true ].
	result := (JQueryClass on: canvas) this.
	anObject numArgs = 1
		ifTrue: [ anObject value: result ]
		ifFalse: [ anObject value: result value: (JSStream argumentAt: 0) ].
	^ result asFunction return: true