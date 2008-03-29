request handling
responseForRequest: aRequest
	currentRequest := aRequest.
	^ self withEscapeHandler: [
		self withErrorHandler: [
			self performRequest: aRequest ] ]