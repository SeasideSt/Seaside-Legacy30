instance-creation
notFound: aUrlOrString
	| response |
	response := self new.
	response
		notFound;
		contentType: WAMimeType textPlain;
		nextPutAll: aUrlOrString seasideString;
		nextPutAll: ' not found'.
	^ response