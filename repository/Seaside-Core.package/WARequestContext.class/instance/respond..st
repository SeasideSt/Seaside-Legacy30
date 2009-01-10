responding
respond: aResponse
	| event |
	"That should be improved, it should also check if the response is not already out on the socket.
	response isNil 
		ifFalse: [ self error: 'Invalid state exception.' ]."
	self trigger: (event := WAResponseEvent on: aResponse).
	WAReturnResponse signalResponse: event response