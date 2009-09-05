testing
testMainJs
	| handler response |
	handler := WAFileHandler named: '/seaside/files/'.
	self requestContextWithUrl: '/i/dont/care/main.js'.
	response := self responseAfter: [ handler handle: self requestContext ].
	self assert: response status = 404