actions
addFirst
	| response |
	self session respond: [ :url |
		response := self session redirectResponseFor: url.
		response addCookie: self firstCookie.
		response ].
	
	self firstKey: nil.
	self secondKey: nil.
	self firstPath: self application baseUrl pathString