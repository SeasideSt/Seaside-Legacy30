writing
writeOn: aStream
	aStream nextPutAll: self key; nextPut: $=; nextPutAll: (self value ifNil: [ '' ]).
	expiry isNil
		ifFalse: [ aStream nextPutAll: '; expires='; nextPutAll: self expiryString ].
	path isNil
		ifFalse: [ aStream nextPutAll: '; path='; nextPutAll: self path ]