notifications
storing: anObject key: aString
	ageTable associationsDo: [ :assoc | assoc value: assoc value + 1 ].
	ageTable at: aString put: 0.