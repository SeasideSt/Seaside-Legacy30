redirecting
redirectWithCookie: aCookie
	| response |
	self respond: [ :url |
		url addParameter: self checkCookiesField.
		response := self redirectResponseFor: url.
		response addCookie: aCookie.
		response ]