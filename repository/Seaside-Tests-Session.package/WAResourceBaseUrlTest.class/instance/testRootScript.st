testing
testRootScript
	self
		assertRoot: [ :html | html javascript resourceUrl: 'main.js' ]
		gives: '<script type="text/javascript" src="https:/www.seaside.st/resources/main.js"></script>'