actions
remove: aCookie
	
	self requestContext respondAndContinue: [ :url |
		| response |
		response := self requestContext redirectResponseFor: url.
		response deleteCookie: aCookie.
		response ]