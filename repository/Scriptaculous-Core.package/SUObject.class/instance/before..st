decorations
before: anObject
	"Call anObject directly before the receiver is evaluated."

	self addDecoration: (SUBefore on: anObject)