processing
handleRequest: aRequest
	"Handle aRequest and answer a response. Do not override this method, instead subclass #responseForRequest: to allow filters process the request first."

	| context response |
	context := WACurrentRequestContext value.
	context handlers addFirst: self.
	response := self filter responseForRequest: aRequest.
	context handlers removeFirst.
	^ response