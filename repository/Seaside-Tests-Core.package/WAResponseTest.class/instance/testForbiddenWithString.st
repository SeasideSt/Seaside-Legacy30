testing
testForbiddenWithString
	response := WAResponse forbidden: '/foo/bar'.
	self assert: response status = 403.
	self assert: response contentType = WAMimeType textPlain.
	
	self assert: response contents contents = 'Access forbidden to /foo/bar'.