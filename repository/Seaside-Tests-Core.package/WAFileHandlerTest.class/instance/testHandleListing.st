testing
testHandleListing
	| response |
	self requestContextWithUrl: '/root/files/WATestingFiles/'.
	response := self responseAfter: [ handler handle: self requestContext ].
	self assertListing: response.
	
	self requestContextWithUrl: '/root/files/WATestingFiles'.
	response := self responseAfter: [ handler handle: self requestContext ].
	self assertListing: response.
	
	self requestContextWithUrl: '/root/files/'.
	response := self responseAfter: [ handler handle: self requestContext ].
	self assertListing: response.
	
	self requestContextWithUrl: '/root/files'.
	response := self responseAfter: [ handler handle: self requestContext ].
	self assertListing: response.