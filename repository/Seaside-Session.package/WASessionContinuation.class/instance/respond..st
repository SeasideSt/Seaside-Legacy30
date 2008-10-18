processing
respond: aBlock 
	| response context |
	response := self newResponse.
	context := self requestContext.
	context response: response.
	aBlock value: response.
	context respond: response