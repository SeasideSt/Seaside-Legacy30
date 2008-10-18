*Seaside-Session
redirectWithMessage: aString delay: aNumber 
	self respondAndContinue: [ :url | 
		self application responseFactory
			refreshAfter: aNumber
			location: url
			message: aString ]