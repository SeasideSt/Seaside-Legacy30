private
iteratorFor: anObject return: aBoolean
	| this |
	anObject isBlock
		ifFalse: [ ^ anObject asFunction return: true ].
	this := (JQueryClass on: canvas) this.
	anObject numArgs = 1
		ifTrue: [ anObject value: this ]
		ifFalse: [ anObject value: this value: (JSStream argument: 0) ].
	^ this asFunction return: aBoolean