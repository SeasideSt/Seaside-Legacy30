testing
testImageTag
	self
		assert: [ :html | html image resourceUrl: 'logo.jpeg' ]
		gives: '<img alt="" src="https:/www.seaside.st/resources/logo.jpeg"/>'