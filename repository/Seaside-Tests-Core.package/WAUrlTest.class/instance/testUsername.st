testing
testUsername
	url
		hostname: 'seaside.st';
		username: 'foo'.
	self assert: url username = 'foo'.
	self assert: url seasideString = 'http://foo@seaside.st/'