forwarding
updateRoot: html
	super updateRoot: html.
	(self verifyRequest: self context request)
		ifFalse: [ self respondNotVerified ]