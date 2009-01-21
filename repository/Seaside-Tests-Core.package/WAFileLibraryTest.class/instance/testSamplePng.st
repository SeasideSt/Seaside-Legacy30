testing
testSamplePng
	| handler library response contents context |
	handler := WAFileHandler named: '/i/dont/care/'.
	library := WATestingFiles default.
	context := self requestContextWithUrl: '/i/dont/care/WATestingFiles/sample.png'.
	response := self responseAfter: [ handler handle: context ].
	self assert: response status = 200.
	self assert: response contentType = WAMimeType imagePng.
	contents := response stream binary; contents.
	self assert: contents asByteArray = (library perform: #samplePng)