deprecated
refreshWithMessage: aString location: aUrlOrString delay: aNumber
	| response |
	self deprecatedApi: 'Use WAResponse>>redirectAfter:location:message:'.
	response := self new refreshAfter: aNumber location: aUrlOrString.
	
	response
		contentType: 'text/plain' toMimeType;
		nextPutAll: aString, Character cr;
		nextPutAll: 'You are being redirected to ', aUrlOrString seasideString.

	^ response