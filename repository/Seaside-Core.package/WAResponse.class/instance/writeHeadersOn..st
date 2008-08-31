writing
writeHeadersOn: aStream 
	self headers associationsDo: [ :association | 
		aStream
			nextPutAll: association key;
			nextPutAll: ': ';
			nextPutAll: association value seasideString.
		aStream crlf ].
	cookies ifNotNil:  [
		cookies do: [ :each | 
			aStream nextPutAll: 'Set-Cookie: '.
			each writeOn: aStream.
			aStream crlf ] ].
	aStream
		nextPutAll: 'Content-Type: ';
		nextPutAll: self contentType seasideString.
	aStream crlf