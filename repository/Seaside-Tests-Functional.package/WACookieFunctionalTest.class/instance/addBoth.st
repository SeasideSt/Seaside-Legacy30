actions
addBoth
	self requestContext response addCookie: self firstCookie.
	self requestContext response addCookie: self secondCookie.
	self requestContext redirect.
	
	self firstKey: nil.
	self firstValue: nil.
	self firstPath: self application baseUrl pathString.
	
	self secondKey: nil.
	self secondValue: nil.
	self secondPath: self application baseUrl pathString