decorations
before: anObject 
	"Call anObject directly before the receiver is evaluated."
	
	self addDecoration: (JSBefore on: anObject)