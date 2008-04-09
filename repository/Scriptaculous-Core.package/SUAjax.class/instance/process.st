processing
process
	| response |
	response := self defaultResponse.
	self processOn: response stream.
	self requestContext returnResponse: response