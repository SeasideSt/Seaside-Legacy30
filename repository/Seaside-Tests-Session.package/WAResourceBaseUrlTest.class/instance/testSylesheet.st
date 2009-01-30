testing
testSylesheet
	self
		assertRoot: [ :html | html stylesheet resourceUrl: 'main.css' ]
		gives: '<link rel="stylesheet" type="text/css" href="https:/www.seaside.st/resources/main.css"/>'