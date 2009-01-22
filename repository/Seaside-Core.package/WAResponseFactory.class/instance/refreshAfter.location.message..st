generation
refreshAfter: aNumber location: aUrlOrString message: aString
	self response
		contentType: WAMimeType textPlain;
		refreshAfter: aNumber location: aUrlOrString
		message: aString , String cr , 'You are being redirected to ', aUrlOrString seasideString