*seaside-flow
redirectWithCookie: aCookie
	self 
		seasideDeprecatedApi: 'WARequestContext>>#redirectWithCookie:'
		details: 'Use WAResponse>>addCookie:. For example: "self requestContent response addCookie: theCookie".'.
	self respondAndContinue: [ :url |
		self response addCookie: aCookie.
		self redirectTo: url ]