public
with: anObject
	anObject isNil
		ifFalse: [
			closed := true.
			value := anObject].