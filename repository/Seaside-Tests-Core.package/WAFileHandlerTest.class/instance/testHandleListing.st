testing
testHandleListing
	| response |
	response := handler handleRequest: (self requestContextWithUrl: '/seaside/files/WAStandardFiles/').
	self assertListing: response.
	response := handler handleRequest: (self requestContextWithUrl: '/seaside/files/WAStandardFiles').
	self assertListing: response.
	response := handler handleRequest: (self requestContextWithUrl: '/seaside/files/').
	self assertListing: response.
	response := handler handleRequest: (self requestContextWithUrl: '/seaside/files').
	self assertListing: response.