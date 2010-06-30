converting-request
requestBodyFor: aNativeRequest
	
	^ aNativeRequest method = 'PUT'
		ifTrue: [
			"bloody, unholy hack"
			aNativeRequest stream next: aNativeRequest contentLength ]
		ifFalse: [
			"This will only work for POST requests... not really cool."
			aNativeRequest rawPostFields ]