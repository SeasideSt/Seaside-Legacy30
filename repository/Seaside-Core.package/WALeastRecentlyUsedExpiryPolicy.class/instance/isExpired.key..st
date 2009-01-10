protocol
isExpired: anObject key: anExternalID
	^ (ageTable at: anExternalID) > self maximumAge