actions
addFirst
	| response |
	self requestContext respondAndContinue: [ :url |
		response := self requestContext redirectResponseFor: url.
		response addCookie: self firstCookie.
		response ].
	
	self firstKey: nil.
	self secondKey: nil.
	self firstPath: self application baseUrl pathString