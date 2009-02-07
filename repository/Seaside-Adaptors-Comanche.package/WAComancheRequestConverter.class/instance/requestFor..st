converting
requestFor: aNativeRequest
	aNativeRequest multiValueFormFieldsEnable.
	aNativeRequest isPostMultipart 
		ifTrue: [ self processMultipartFields: aNativeRequest ].
	^ WARequest
		method: aNativeRequest method
		url: (self urlFor: aNativeRequest)
		headers: aNativeRequest header
		fields: (self fieldsFor: aNativeRequest)
		cookies: (self cookiesFor: aNativeRequest)
		remoteAddress: (self remoteAddressFor: aNativeRequest)
		nativeRequest: aNativeRequest