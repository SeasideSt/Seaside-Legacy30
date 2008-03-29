actions
render
	self session clearJumpTo.
	renderContext := self newContext.
	self respond: [ :response | self processRendering: response ]