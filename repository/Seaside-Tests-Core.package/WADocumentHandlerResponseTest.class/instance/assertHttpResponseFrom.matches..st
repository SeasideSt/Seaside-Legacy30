private
assertHttpResponseFrom: aResponse matches: aHandler
	self assert: aResponse status = 200.
	self assert: aResponse contents contents = aHandler document.
	self assert: aResponse contentType = aHandler mimeType.
	self assert: aResponse contents contents size = aHandler document size.
	self assert: aResponse cookies isEmpty