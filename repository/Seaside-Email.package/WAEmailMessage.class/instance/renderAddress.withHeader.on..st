private
renderAddress: anEmailAddress withHeader: aString on: aStream
	aStream
		nextPutAll: aString;
		nextPutAll: anEmailAddress seasideString;
		nextPut: Character cr