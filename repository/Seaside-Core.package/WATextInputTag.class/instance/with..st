public
with: anObject
	anObject isNil 
		ifFalse: [ self value: anObject toString ].
	super with: nil