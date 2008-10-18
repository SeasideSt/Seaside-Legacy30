private
assertHttpResponseFrom: aResponse matches: aHandler
	self assert: aResponse status = 200.
	self assert: aResponse contentType = aHandler document mimeType.
	self assert: aResponse contents contents size = aHandler document contents size.
	self assert: aResponse cookies isEmpty