testing
testFileLibraries
	| response |
	handler := WAFileHandler named: '/i/dont/care/'.
	handler preferenceAt: #fileHandlerListingClass put: self handlerClass.

	self requestContextWithUrl: '/i/dont/care/'.
	self requestContext consumer next; next.

	response := self responseAfter: [ handler handle: self requestContext ].

	self assert: response status = self expectedStatus.
	self assert: response contentType = self expectedMimeType.
	self assertLibrariesResponse: response.
