request handling
responseForRequest: aRequest
	currentRequest := aRequest.
	^ self withEscapeHandler: [
		self withErrorHandler: [
			WACurrentSession
				use: self
				during: [ self performRequest: aRequest ] ] ]