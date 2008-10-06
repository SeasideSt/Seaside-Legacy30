testing
testConfigPng
	| handler library response contents context |
	handler := WAFileHandler named: '/i/dont/care/'.
	library := WATestingFiles new.
	context := self requestContextWithUrl: '/i/dont/care/WATestingFiles/config.png'.
	response := handler handleRequest: context.
	self assert: response status = 200.
	self assert: response contentType = WAMimeType imagePng.
	contents := response stream binary; contents.
	self assert: contents asByteArray = (library perform: #configPng)