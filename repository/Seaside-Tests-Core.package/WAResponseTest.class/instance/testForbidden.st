testing
testForbidden
	response := WAResponse new forbidden; yourself.
	self assert: response status = 403