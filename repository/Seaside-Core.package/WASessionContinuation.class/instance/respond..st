processing
respond: aBlock 
	| response context |
	states := self newStates.
	response := self newResponse.
	context := WACurrentRequestContext value.
	context response: response.
	context onRespond: [ :value | self updateStates: states ].
	aBlock value: response.
	context returnResponse: response