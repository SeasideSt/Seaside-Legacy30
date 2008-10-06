testing
testMainJs
	| handler context response |
	handler := WAFileHandler named: '/seaside/files/'.
	context := self requestContextWithUrl: '/i/dont/care/main.js'.
	response := handler handleRequest: context.
	self assert: response status = 404