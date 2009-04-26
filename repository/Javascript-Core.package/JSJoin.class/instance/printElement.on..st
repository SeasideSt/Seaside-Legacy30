printing
printElement: anObject on: aStream
	anObject isVariableBinding
		ifFalse: [ aStream javascript: anObject ]
		ifTrue: [
			aStream nextPut: $"; nextPutAll: anObject key seasideString.
			anObject key isNil
				ifTrue: [ aStream nextPut: $" ]
				ifFalse: [
					aStream nextPut: $=.
					anObject value isString
						ifTrue: [ aStream nextPutAll: anObject value; nextPut: $" ]
						ifFalse: [ aStream nextPut: $"; nextPut: $+; javascript: anObject value ] ] ]