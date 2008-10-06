testing-comparing
testHash
	url hostname: 'seaside.st'.
	self assert: url hash = url hash.
	self assert: url hash = url copy hash