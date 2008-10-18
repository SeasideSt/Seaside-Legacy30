actions
addBoth
	| response |
	self requestContext respondAndContinue: [ :url |
		response := self requestContext redirectResponseFor: url.
		response addCookie: self firstCookie.
		response addCookie: self secondCookie.
		response ].
	
	self firstKey: nil.
	self firstValue: nil.
	self firstPath: self application baseUrl pathString.
	
	self secondKey: nil.
	self secondValue: nil.
	self secondPath: self application baseUrl pathString