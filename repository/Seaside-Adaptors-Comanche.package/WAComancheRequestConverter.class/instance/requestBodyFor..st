converting-request
requestBodyFor: aNativeRequest
	"This will only work for POST requests... not really cool."
	
	^ aNativeRequest rawPostFields