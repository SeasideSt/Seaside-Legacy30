testing
testHandleListing
	| response |
	response := handler handle: (self requestContextWithUrl: '/root/files/WATestingFiles/').
	self assertListing: response.
	response := handler handle: (self requestContextWithUrl: '/root/files/WATestingFiles').
	self assertListing: response.
	response := handler handle: (self requestContextWithUrl: '/root/files/').
	self assertListing: response.
	response := handler handle: (self requestContextWithUrl: '/root/files').
	self assertListing: response.