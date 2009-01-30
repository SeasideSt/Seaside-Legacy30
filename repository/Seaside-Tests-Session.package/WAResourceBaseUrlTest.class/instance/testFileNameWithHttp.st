testing
testFileNameWithHttp
	self
		assert: [ :html | html image resourceUrl: 'http.gif' ]
		gives: '<img alt="" src="https:/www.seaside.st/resources/http.gif"/>'