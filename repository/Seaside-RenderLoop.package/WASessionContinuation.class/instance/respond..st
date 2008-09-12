processing
respond: aBlock 
	| response context |
	states := self newStates.
	response := self newResponse.
	context := self requestContext.
	context response: response.
	context onRespond: [ :value | self updateStates: states ].
	aBlock value: response.
	context returnResponse: response