notifications
storing: anObject key: anExternalID
	ageTable associationsDo: [ :assoc | assoc value: assoc value + 1 ].
	ageTable at: anExternalID put: 0.