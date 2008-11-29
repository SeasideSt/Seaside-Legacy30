*seaside-session
redirectWithCookie: aCookie
	| r |
	self respondAndContinue: [ :url |
		r := self requestContext redirectResponseFor: url.
		r addCookie: aCookie.
		r ]