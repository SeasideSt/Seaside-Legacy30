actions
render
	self session clearJumpTo.
	context := self newContext.
	self respond: [ :response | self processRendering: response ]