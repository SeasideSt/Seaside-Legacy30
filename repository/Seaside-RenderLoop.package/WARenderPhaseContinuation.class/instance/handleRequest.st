processing
handleRequest
	self withExceptionHandlers: [ self render ].
	"The render phase should have returned a response"
	WAMissingResponseError raiseSignal