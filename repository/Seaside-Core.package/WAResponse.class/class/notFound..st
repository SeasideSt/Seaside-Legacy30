instance creation
notFound: aUrlOrString
	| response |
	response := self new.
	response
		notFound;
		contentType: 'text/plain' toMimeType;
		nextPutAll: aUrlOrString seasideString, ' not found'.
	^ response