testing
testBasePath
	self assert: handler parent basePath = ('/', handler parent name).
	self assert: handler basePath = ('/', handler name)