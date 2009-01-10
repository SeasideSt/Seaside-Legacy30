testing
testHandleListing
	| response |
	response := handler handleRequest: (self requestContextWithUrl: '/root/files/WATestingFiles/').
	self assertListing: response.
	response := handler handleRequest: (self requestContextWithUrl: '/root/files/WATestingFiles').
	self assertListing: response.
	response := handler handleRequest: (self requestContextWithUrl: '/root/files/').
	self assertListing: response.
	response := handler handleRequest: (self requestContextWithUrl: '/root/files').
	self assertListing: response.