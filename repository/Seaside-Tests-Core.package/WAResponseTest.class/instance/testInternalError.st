testing
testInternalError
	response := WAResponse new internalError; yourself.
	self assert: response status = 500