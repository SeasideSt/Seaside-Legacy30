redirecting
redirectWithMessage: aString delay: aNumber
	self respond: [ :url |
		WAResponse
			refreshWithMessage: aString
			location: url displayString
			delay: aNumber ]