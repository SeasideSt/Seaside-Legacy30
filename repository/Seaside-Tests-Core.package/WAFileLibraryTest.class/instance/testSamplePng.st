testing
testSamplePng
	| handler library response stream contents |
	handler := WAFileHandler named: '/i/dont/care/'.
	library := WATestingFiles default.
	self requestContextWithUrl: '/i/dont/care/WATestingFiles/sample.png'.
	response := self responseAfter: [ handler handle: self requestContext ].
	self assert: response status = 200.
	self assert: response contentType = WAMimeType imagePng.
	stream := WriteStream on: ByteArray new.
	response writeContentOn: stream.
	contents := stream contents.
	self assert: contents asByteArray = (library perform: #samplePng).