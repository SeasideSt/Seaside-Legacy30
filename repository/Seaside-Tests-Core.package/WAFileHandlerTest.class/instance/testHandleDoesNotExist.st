testing
testHandleDoesNotExist
	| response |
	response := handler handleRequest: (self requestContextWithUrl: '/seaside/files/Cheeseburger/').
	self assertNotExisiting: response.
	response := handler handleRequest: (self requestContextWithUrl: '/seaside/files/Cheeseburger').
	self assertNotExisiting: response.
	response := handler handleRequest: (self requestContextWithUrl: '/seaside/files/WAStandardFiles/cheeseburger.jpeg').
	self assertNotExisiting: response