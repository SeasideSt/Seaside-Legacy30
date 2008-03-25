private
writeOn: aStream 
	self hasWrittenHeaders ifTrue: [ ^ self ].
	self writeStatusOn: aStream.
	self writeHeadersOn: aStream.
	aStream crlf.
	writtenHeaders := true