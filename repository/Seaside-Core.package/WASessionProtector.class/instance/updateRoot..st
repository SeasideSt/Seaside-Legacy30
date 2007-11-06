forwarding
updateRoot: html
	super updateRoot: html.
	(self verifyRequest: self session currentRequest)
		ifFalse: [ self respondNotVerified ]