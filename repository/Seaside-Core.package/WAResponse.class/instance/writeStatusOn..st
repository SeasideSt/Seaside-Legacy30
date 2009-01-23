writing
writeStatusOn: aStream
	aStream nextPutAll: self httpVersion.
	aStream nextPut: $ ; print: self status.
	self message isNil
		ifFalse: [ aStream nextPut: $ ; nextPutAll: self message ].
	aStream crlf