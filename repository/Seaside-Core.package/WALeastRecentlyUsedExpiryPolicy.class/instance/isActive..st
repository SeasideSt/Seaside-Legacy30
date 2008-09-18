protocol
isActive: anExternalID
	^ (ageTable at: anExternalID) <= self maximumAge