actions
addFirst
	self requestContext response addCookie: self firstCookie.
	self requestContext redirect.
	
	self firstKey: nil.
	self secondKey: nil.
	self firstPath: self application baseUrl pathString