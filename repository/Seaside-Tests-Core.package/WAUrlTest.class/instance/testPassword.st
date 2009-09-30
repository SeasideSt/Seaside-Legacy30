testing
testPassword
	url
		hostname: 'seaside.st';
		username: 'foo';
		password: 'bar'.
	self assert: url password = 'bar'.
	self assert: url greaseString = 'http://foo:bar@seaside.st/'