converting
convertRequest: aKomRequest
	| request |
	aKomRequest multiValueFormFieldsEnable.
	aKomRequest isPostMultipart ifTrue: [
		self processMultipartFields: aKomRequest ].

	request := WARequest
		method: aKomRequest method
		url: (self urlFrom: aKomRequest)
		headers: aKomRequest header
		fields: (self fieldsOf: aKomRequest)
		cookies: (self cookiesFrom: aKomRequest)
		remoteAddress: (self remoteAddressOf: aKomRequest)
		nativeRequest: aKomRequest.

	"needed only by SqueakSource"
	aKomRequest method = 'PUT' ifTrue: [
		request fields
			at: 'PUTData'
			put: (aKomRequest stream next: aKomRequest contentLength) ].
	^ request