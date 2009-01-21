*seaside-session
redirectWithCookie: aCookie
	self respondAndContinue: [ :url |
		self response addCookie: aCookie.
		self redirectTo: url ]