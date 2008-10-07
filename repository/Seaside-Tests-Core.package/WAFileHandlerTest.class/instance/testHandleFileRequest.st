testing
testHandleFileRequest
	| response |
	response := handler handleRequest: (self requestContextWithUrl: '/root/files/WATestingFiles/sample.js').
	self assert: response status = 200.
	self assert: response contentType main = 'application'.
	self assert: response contentType sub = 'x-javascript'.
	self assert: response contents contents = WATestingFiles new sampleJs