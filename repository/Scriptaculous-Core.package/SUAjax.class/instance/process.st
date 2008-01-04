processing
process
	| response |
	response := self defaultResponse.
	self processOn: response stream.
	self session returnResponse: response