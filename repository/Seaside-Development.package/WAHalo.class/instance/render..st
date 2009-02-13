rendering-modes
render: html
	"Render the object we are wrapping normally. See #modes."
	
	(WARenderVisitor context: html context) start: self root