processing
processWith: argumentString
	| response |
	response := self defaultResponse.
	self processOn: response stream with: argumentString.
	self requestContext returnResponse: response