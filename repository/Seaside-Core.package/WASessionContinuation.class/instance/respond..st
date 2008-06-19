processing
respond: aBlock 
	| response |
	states := self newStates.
	response := self newResponse.
	WARequestContext response: response.
	aBlock value: response.
	self updateStates: states.
	self session returnResponse: response