testing
testHandlesReturnsBool
	self 
		assertHandles: WATestError new
		returnsSatisfying: [ :result | result == true or: [ result == false ] ]