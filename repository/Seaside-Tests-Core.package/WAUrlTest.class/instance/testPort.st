testing
testPort
	url
		hostname: 'seaside.st';
		port: 8080.
	self assert: url port = 8080.
	self assert: url greaseString = 'http://seaside.st:8080/'