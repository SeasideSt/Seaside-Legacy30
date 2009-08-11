testing
testSlash
	url hostname: 'seaside.st'.
	self assert: (url slash: true; seasideString) = 'http://seaside.st/'.
	self assert: (url slash: false; seasideString) = 'http://seaside.st/'.
	
	url addToPath: 'foo'.
	self assert: (url slash: true; seasideString) = 'http://seaside.st/foo/'.
	self assert: (url slash: false; seasideString) = 'http://seaside.st/foo'