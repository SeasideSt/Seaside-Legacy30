visiting
visitDecoration: aDecoration
	super visitDecoration: aDecoration.
	aDecoration isDelegation
		ifFalse: [ aDecoration next accept: self ]