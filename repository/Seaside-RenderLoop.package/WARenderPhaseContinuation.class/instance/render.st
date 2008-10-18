processing
render
	self session clearJumpTo.
	self respond: [ :response | self processRendering: response ]