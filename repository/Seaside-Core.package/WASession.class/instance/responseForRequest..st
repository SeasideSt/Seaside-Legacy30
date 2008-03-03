request handling
responseForRequest: aRequest
	currentRequest := aRequest.
	^ self withEscapeContinuation: [
		WACurrentSession
			use: self
			during: [
				self withErrorHandler: [
					self performRequest: aRequest ] ] ]