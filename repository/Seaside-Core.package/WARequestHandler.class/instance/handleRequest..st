processing
handleRequest: aRequestContext
	"Handle a request with the context aRequestContext and answer a response. Do not override this method, instead subclass #responseForContext: to allow filters process the request first."

	^ aRequestContext push: self while: [ self filter responseForContext: aRequestContext ]