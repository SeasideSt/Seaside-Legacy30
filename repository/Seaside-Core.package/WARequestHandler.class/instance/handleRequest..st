processing
handleRequest: aRequest
	"Handle aRequest and answer a response. Do not override this method, instead subclass #responseForRequest: to allow filters process the request first."

	^WACurrentRequestContext value
		pushRequestHandler: self
		while: [ self filter responseForRequest: aRequest ]