processing
process
	| response |
	response := self defaultResponse.
	self processOn: response stream.
	self context returnResponse: response