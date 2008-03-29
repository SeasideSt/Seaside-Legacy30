request handling
responseForRequest: aRequest
	^ self withEscapeHandler: [
		self withErrorHandler: [
			self performRequest: aRequest ] ]