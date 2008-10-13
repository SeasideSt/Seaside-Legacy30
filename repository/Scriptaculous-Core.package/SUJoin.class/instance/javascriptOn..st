printing
javascriptOn: aStream
	aStream nextPut: $[.
	self collection 
		do: [ :each |
			each isVariableBinding
				ifFalse: [ aStream javascript: each ]
				ifTrue: [
					aStream nextPut: $'; nextPutAll: each key asString.
					each key isNil
						ifTrue: [ aStream nextPut: $' ]
						ifFalse: [
							aStream nextPut: $=.
							each value isString
								ifTrue: [ aStream nextPutAll: each value; nextPut: $' ]
								ifFalse: [ aStream nextPut: $'; nextPut: $+; javascript: each value ] ] ] ]
		separatedBy: [ aStream nextPut: $, ].
	aStream nextPut: $]; nextPutAll: '.join('; javascript: self joiner; nextPut: $)