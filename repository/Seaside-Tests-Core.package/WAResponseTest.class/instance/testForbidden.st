testing
testForbidden
	response := WAResponse forbidden: '/foo/bar' seasideUrl.
	self assert: response status = 403.
	self assert: response contentType = WAMimeType textPlain.
	
	self assert: response contents contents = 'Access forbidden to /foo/bar'.