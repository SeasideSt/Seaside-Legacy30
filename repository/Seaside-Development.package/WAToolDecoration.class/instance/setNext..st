initialization
setNext: aDecoration
	super setNext: aDecoration.
	plugins := WAToolPlugin allSubclassesOn: self component for: self