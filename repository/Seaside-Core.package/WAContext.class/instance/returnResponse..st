responding
returnResponse: aResponse
	| event |
	response isNil 
		ifFalse: [ self error: 'Invalid state exception.' ].
	self trigger: (event := WAResponseEvent on: aResponse).
	response := event response