testing
testScheme
	url
		scheme: 'https';
		hostname: 'seaside.st'.
	self assert: url scheme = 'https'.
	self assert: url seasideString = 'https://seaside.st/'.
	"Tests from Boris"
	url hostname: 'seaside.st'.
	url
		port: 80;
		scheme: 'http'.
	self assert: url seasideString = 'http://seaside.st/'.
	url
		port: 443;
		scheme: 'https'.
	self assert: url seasideString = 'https://seaside.st/'.
	url
		port: 80;
		scheme: #http.
	self assert: url seasideString = 'http://seaside.st/'.
	url
		port: 443;
		scheme: #https.
	self assert: url seasideString = 'https://seaside.st/'