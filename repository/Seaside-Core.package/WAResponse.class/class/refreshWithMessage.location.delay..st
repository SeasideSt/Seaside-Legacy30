deprecated
refreshWithMessage: aString location: aUrlOrString delay: aNumber 
	| response |
	self 
		seasideDeprecatedApi: 'WAResponse class>>refreshWithMessage:location:delay:'
		details: 'Use WAResponse class>>redirectAfter:location:message:.'.
	response := self new 
		refreshAfter: aNumber
		location: aUrlOrString.
	response
		contentType: WAMimeType textPlain;
		nextPutAll: aString;
		nextPutAll: Character cr;
		nextPutAll: 'You are being redirected to ';
		nextPutAll: aUrlOrString seasideString.
	^ response