actions
remove: aCookie
	
	self session respond: [ :url |
		| response |
		response := self session redirectResponseFor: url.
		response deleteCookie: aCookie.
		response ]