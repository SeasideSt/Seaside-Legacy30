testing
testSamplePng
	| handler library response contents |
	handler := WAFileHandler named: '/i/dont/care/'.
	library := WATestingFiles default.
	self requestContextWithUrl: '/i/dont/care/WATestingFiles/sample.png'.
	response := self responseAfter: [ handler handle: self requestContext ].
	self assert: response status = 200.
	self assert: response contentType = WAMimeType imagePng.
	contents := response stream binary; contents.
	self assert: contents asByteArray = (library perform: #samplePng)