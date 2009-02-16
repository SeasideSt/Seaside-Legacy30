converting-request
requestUrlFor: aNativeRequest
	^ ((WAUrl absolute: aNativeRequest uri printString)
		decodedWith: self codec) withoutParameters