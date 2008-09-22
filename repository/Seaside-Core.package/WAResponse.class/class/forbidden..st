instance creation
forbidden: aUrlOrString
	| response |
	response := self new.
	response
		forbidden;
		contentType: WAMimeType textPlain;
		nextPutAll: 'Access forbidden to ', aUrlOrString seasideString.
	^ response