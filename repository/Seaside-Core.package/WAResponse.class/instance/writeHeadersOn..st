writing
writeHeadersOn: aStream 
	self headers associationsDo: [ :assoc | 
		aStream
			nextPutAll: assoc key;
			nextPutAll: ': ';
			nextPutAll: assoc value toString.
		aStream crlf ].
	cookies ifNotNil: [
		cookies do: [ :each | 
			aStream nextPutAll: 'Set-Cookie: '.
			each writeOn: aStream.
			aStream crlf ] ].
	aStream
		nextPutAll: 'Content-Type: ' ;
		nextPutAll: self contentType toString.
	aStream crlf