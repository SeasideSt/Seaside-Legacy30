initialization
setNext: aDecoration
	super setNext: aDecoration.
	plugins := WAToolPlugin 
		allSubclassesOn: self decoratedComponent
		for: self