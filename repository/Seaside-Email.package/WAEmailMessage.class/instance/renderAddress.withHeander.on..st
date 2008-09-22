private
renderAddress: anEmailAddress withHeander: aString on: aStream
	aStream
		nextPutAll: aString;
		nextPutAll: anEmailAddress seasideString;
		cr