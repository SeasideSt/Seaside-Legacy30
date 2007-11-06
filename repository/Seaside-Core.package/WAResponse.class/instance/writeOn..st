writing
writeOn: aStream
	self writeStatusOn: aStream.
	self writeHeadersOn: aStream.
	aStream crlf.
	aStream nextPutAll: stream contents