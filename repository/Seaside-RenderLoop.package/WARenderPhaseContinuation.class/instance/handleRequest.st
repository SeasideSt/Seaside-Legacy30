processing
handleRequest
	self withNotificationHandlerDo: [ self render ].
	"The render phase should have returned a response"
	WAMissingResponseError raiseSignal