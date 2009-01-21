testing
testNotFound
	response := WAResponse new notFound; yourself.
	self assert: response status = 404