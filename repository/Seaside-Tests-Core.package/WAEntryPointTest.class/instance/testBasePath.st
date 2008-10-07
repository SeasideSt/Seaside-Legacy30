testing
testBasePath
	self assert: handler parent basePath = ('/', handler parent name).
	self assert: handler basePath = ('/', handler parent name, '/', handler name).
	
	handler parent setName: ''.
	self assert: handler parent basePath = ''.
	self assert: handler basePath = ('/', handler name).