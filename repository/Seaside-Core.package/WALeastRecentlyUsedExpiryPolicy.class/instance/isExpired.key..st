protocol
isExpired: anObject key: aString
	^ (ageTable at: aString) > self maximumAge