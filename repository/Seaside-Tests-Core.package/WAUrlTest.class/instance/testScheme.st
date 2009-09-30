testing
testScheme
	url
		scheme: 'https';
		hostname: 'seaside.st'.
	self assert: url scheme = 'https'.
	self assert: url greaseString = 'https://seaside.st/'.
	"Tests from Boris"
	url hostname: 'seaside.st'.
	url
		port: 80;
		scheme: 'http'.
	self assert: url greaseString = 'http://seaside.st/'.
	url
		port: 443;
		scheme: 'https'.
	self assert: url greaseString = 'https://seaside.st/'.
	url
		port: 80;
		scheme: #http.
	self assert: url greaseString = 'http://seaside.st/'.
	url
		port: 443;
		scheme: #https.
	self assert: url greaseString = 'https://seaside.st/'