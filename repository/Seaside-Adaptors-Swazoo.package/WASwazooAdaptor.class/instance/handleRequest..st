serving
handleRequest: aSwazooRequest
	(self isImplemented: aSwazooRequest methodName)
		ifFalse: [ ^self notImplementedResponse ].

	^ [
		| request response |
		request := self convertRequest: aSwazooRequest.
		response := self dispatchRequest: request.
		[ self convertResponse: response ]
			ensure: [ response release ] ]
		on: Error
		do: [ :exception | 
			self internalErrorResponseFor: exception ]