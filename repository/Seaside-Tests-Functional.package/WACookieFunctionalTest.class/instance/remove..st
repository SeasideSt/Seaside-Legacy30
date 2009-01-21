actions
remove: aCookie
	self requestContext response deleteCookie: aCookie.
	self requestContext redirect