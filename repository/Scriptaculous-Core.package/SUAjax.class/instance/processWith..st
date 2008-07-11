processing
processWith: aString
	| response |
	response := self defaultResponse.
	self processOn: response stream with: aString.
	self requestContext returnResponse: response