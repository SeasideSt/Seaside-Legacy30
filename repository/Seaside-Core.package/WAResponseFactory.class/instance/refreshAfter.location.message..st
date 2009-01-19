generation
refreshAfter: aNumber location: aUrlOrString message: aString
	self response
		contentType: WAMimeType textPlain;
		refreshAfter: aNumber location: aUrlOrString
		message: aString , Character cr , 'You are being redirected to ', aUrlOrString seasideString