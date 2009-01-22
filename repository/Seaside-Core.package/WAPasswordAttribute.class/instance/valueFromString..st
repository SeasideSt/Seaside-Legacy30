converting
valueFromString: aString
	^ aString isEmptyOrNil ifFalse: [
		WAPlatform current secureHashFor: aString ]