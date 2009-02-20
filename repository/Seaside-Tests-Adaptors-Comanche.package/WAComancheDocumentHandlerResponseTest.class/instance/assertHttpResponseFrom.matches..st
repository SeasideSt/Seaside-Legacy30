testing
assertHttpResponseFrom: aResponse matches: aHandler 
	| httpResponse kom |
	super 
		assertHttpResponseFrom: aResponse
		matches: aHandler.
	kom := WAComancheAdaptor new.
	[ httpResponse := kom responseFrom: self requestContext ]
		ensure: [ kom unregister ].
	self assert: httpResponse status == #ok.
	self assert: httpResponse contentType = aHandler document mimeType seasideString.
	self assert: httpResponse contentLength = aHandler document contents size.
	httpResponse fields keysAndValuesDo: [ :key :value | 
		self assert: (self headerAt: key forResponse: aResponse) seasideString = value ].
	aResponse headers keysAndValuesDo: [ :key :value |
		self assert: (key = 'Content-Type' or: [ (httpResponse fields at: key) = value seasideString ]) ].
	self assert: httpResponse cookies isEmpty