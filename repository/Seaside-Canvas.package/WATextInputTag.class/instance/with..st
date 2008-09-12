public
with: anObject 
	anObject isNil ifFalse: [ self value: anObject seasideString ].
	super with: nil