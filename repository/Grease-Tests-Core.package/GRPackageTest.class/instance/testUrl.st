testing
testUrl
	self assert: package url = 'http://www.squeaksource.com/Seaside30/'.
	
	package url: #seasideLGPLUrl.
	self assert: package url = 'http://www.squeaksource.com/Seaside30LGPL/'.
	
	package url: 'http://www.seaside.st/distributions/'.
	self assert: package url = 'http://www.seaside.st/distributions/'