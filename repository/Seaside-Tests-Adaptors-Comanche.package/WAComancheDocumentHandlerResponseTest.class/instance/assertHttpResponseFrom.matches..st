testing
assertHttpResponseFrom: aResponse matches: aHandler 
	| httpResponse kom |
	super 
		assertHttpResponseFrom: aResponse
		matches: aHandler.
	[ kom := WAComancheAdaptor new.
	httpResponse := kom convertResponse: aResponse ]
		ensure: [ kom ifNotNil: [ kom unregister ] ].
	self assert: httpResponse status == #ok.
	self assert: httpResponse contentType = aHandler document mimeType seasideString.
	self assert: httpResponse contentLength = aHandler document contents size.
	httpResponse fields keysAndValuesDo: [ :key :value | 
		self assert: (self headerAt: key forResponse: aResponse) = value ].
	aResponse headers do: [ :each | self assert: (httpResponse fields at: each key) = each value ].
	self assert: httpResponse cookies isEmpty