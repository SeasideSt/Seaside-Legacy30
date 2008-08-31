redirecting
redirectWithMessage: aString delay: aNumber 
	self respond: [ :url | 
		WAResponse 
			refreshWithMessage: aString
			location: url seasideString
			delay: aNumber ]