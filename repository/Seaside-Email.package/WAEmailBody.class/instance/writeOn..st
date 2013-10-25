accessing
writeOn: aStream
	aStream
		nextPutAll: 'Content-Type: ';
		nextPutAll: self contentType;
		nextPut: Character cr;
		nextPut: Character cr;
		nextPutAll: self string;
		nextPut: Character cr