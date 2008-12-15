private-parsing
parseTrue
	self exptectString: 'true'.
	self nextNonWhiteSpace.
	^ true