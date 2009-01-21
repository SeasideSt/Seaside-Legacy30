writing
writeOn: aStream
	self writeStatusOn: aStream.
	self writeHeadersOn: aStream.
	self writeCookiesOn: aStream.
	aStream nextPut: Character cr; nextPut: Character lf.
	self writeContentOn: aStream