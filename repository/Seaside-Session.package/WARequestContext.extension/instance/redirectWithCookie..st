*seaside-session
redirectWithCookie: aCookie
	self 
		seasideDeprecatedApi: 'WARequestContext>>#redirectWithCookie:'
		details: 'Do self requestContent response #addCooke:.'.
	self respondAndContinue: [ :url |
		self response addCookie: aCookie.
		self redirectTo: url ]