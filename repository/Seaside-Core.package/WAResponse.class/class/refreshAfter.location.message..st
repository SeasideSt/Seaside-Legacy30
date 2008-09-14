instance creation
refreshAfter: aNumber location: aUrlOrString message: aString
	^ self new
		refreshAfter: aNumber location: aUrlOrString;
		contentType: 'text/plain' toMimeType;
		nextPutAll: aString seasideString;
		yourself