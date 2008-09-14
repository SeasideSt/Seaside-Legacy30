instance creation
forbidden: aUrlOrString
	| response |
	response := self new.
	response
		forbidden;
		contentType: 'text/plain' toMimeType;
		nextPutAll: 'Access forbidden to ', aUrlOrString seasideString.
	^ response