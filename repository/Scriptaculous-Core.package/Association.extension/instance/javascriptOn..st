*scriptaculous-core
javascriptOn: aStream
	aStream nextPut: $'; nextPutAll: self key asString.
	self value isNil
		ifTrue: [ aStream nextPut: $' ]
		ifFalse: [
			aStream nextPut: $=.
			self value isString
				ifTrue: [ aStream nextPutAll: self value; nextPut: $' ]
				ifFalse: [ aStream nextPut: $'; nextPut: $+; javascript: self value ] ]