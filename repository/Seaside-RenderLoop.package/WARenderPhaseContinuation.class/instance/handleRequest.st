processing
handleRequest
	"We no longer really need to catch the notification handler here but
	we need #call: to generate a useful error response during the render
	phase so, until we improve that, it's still here.'"
	self withNotificationHandlerDo: [
		self session clearJumpTo.
		self respond: [ :response | self processRendering: response ] ].

	"The render phase should have returned a response"
	WAMissingResponseError signal