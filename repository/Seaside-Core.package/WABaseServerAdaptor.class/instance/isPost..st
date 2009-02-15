private-testing
isPost: aNativeRequest
	^(self methodNameOf: aNativeRequest) = 'POST'