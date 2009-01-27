*seaside-flow
redirectWithMessage: aString delay: aNumber 
	self respondAndContinue: [ :url | 
		self responseFactory
			refreshAfter: aNumber
			location: url
			message: aString ]