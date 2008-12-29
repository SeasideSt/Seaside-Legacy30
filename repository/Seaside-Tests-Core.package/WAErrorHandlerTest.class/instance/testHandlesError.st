testing
testHandlesError
	self assert: (self handlerClass handles: Error new)