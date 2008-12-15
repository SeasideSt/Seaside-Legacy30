private-parsing
parseNull
	self exptectString: 'null'.
	self nextNonWhiteSpace.
	^ nil