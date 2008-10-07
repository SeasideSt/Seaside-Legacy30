testing
testHandleDoesNotExist
	| response |
	response := handler handleRequest: (self requestContextWithUrl: '/root/files/Cheeseburger/').
	self assertNotExisiting: response.
	response := handler handleRequest: (self requestContextWithUrl: '/root/files/Cheeseburger').
	self assertNotExisiting: response.
	response := handler handleRequest: (self requestContextWithUrl: '/root/files/WAStandardFiles/cheeseburger.jpeg').
	self assertNotExisiting: response