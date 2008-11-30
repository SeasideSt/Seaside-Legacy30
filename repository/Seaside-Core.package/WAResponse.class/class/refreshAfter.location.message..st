instance-creation
refreshAfter: aNumber location: aUrlOrString message: aString
	^ self new
		refreshAfter: aNumber location: aUrlOrString;
		contentType: WAMimeType textPlain;
		nextPutAll: aString seasideString;
		yourself