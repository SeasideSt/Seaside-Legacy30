testing
testNotFound
	response := WAResponse notFound: '/foo/bar' seasideUrl.
	self assert: response status = 404.
	self assert: response contentType = WAMimeType textPlain.
	
	self assert: response contents contents = '/foo/bar not found'.