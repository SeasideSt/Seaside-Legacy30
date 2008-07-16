public
newDocumentOn: aStream
	^ self documentClass new
		stream: aStream;
		yourself.