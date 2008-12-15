private-parsing
parseFalse
	self exptectString: 'false'.
	self nextNonWhiteSpace.
	^ false