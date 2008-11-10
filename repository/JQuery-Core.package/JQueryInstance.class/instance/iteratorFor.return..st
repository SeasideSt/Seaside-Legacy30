private
iteratorFor: anObject return: aBoolean
	| result |
	anObject isBlock
		ifFalse: [ ^ anObject asFunction return: true ].
	result := (JQueryClass on: canvas) this.
	anObject numArgs = 1
		ifTrue: [ anObject value: result ]
		ifFalse: [ anObject value: result value: (JSStream argument: 0) ].
	^ result asFunction return: aBoolean