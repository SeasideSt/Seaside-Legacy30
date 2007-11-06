private
writeOn: aStream
	self hasWrittenHeaders ifFalse: [
		self writeStatusOn: aStream.
		self writeHeadersOn: aStream.
		aStream crlf.
		writtenHeaders := true ]