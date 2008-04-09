forwarding
updateRoot: html
	super updateRoot: html.
	(self verifyRequest: self requestContext request)
		ifFalse: [ self respondNotVerified ]