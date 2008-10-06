actions
addBoth
	| response |
	self session respond: [ :url |
		response := self session redirectResponseFor: url.
		response addCookie: self firstCookie.
		response addCookie: self secondCookie.
		response ].
	
	self firstKey: nil.
	self firstValue: nil.
	self firstPath: self application baseUrl pathString.
	
	self secondKey: nil.
	self secondValue: nil.
	self secondPath: self application baseUrl pathString