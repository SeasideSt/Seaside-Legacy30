testing
testHostname
	url hostname: 'seaside.st'.
	self assert: url hostname = 'seaside.st'.
	self assert: url greaseString = 'http://seaside.st/'