writing
writeStatusOn: aStream
	aStream nextPutAll: self httpVersion; space; nextPutAll: self status displayString; crlf