serving
handleRequest: aNativeRequest
	^ [
		| request response |
		request := self convertRequest: aNativeRequest.
		response := self dispatchRequest: request.
		[ self convertResponse: response ]
			ensure: [ response release ] ]
		on: Error
		do: [ :exception |
			self internalErrorResponseFor: exception ]