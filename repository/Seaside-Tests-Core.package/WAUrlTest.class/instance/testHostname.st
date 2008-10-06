testing
testHostname
	url hostname: 'seaside.st'.
	self assert: url hostname = 'seaside.st'.
	self assert: url seasideString = 'http://seaside.st/'