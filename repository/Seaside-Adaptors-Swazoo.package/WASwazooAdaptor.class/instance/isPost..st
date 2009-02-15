private
isPost: aNativeRequest
	^(self methodNameOf: aNativeRequest) = 'POST'