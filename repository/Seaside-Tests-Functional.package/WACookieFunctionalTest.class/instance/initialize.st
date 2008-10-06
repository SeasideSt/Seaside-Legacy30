initialize-release
initialize
	super initialize.
	self firstPath: self application baseUrl pathString.
	self secondPath: self application baseUrl pathString.