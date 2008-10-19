callbacks
callback: aBlock value: anObject
	"Defines aBlock as a callback of the receiver."
	
	self addParameter: (owner canvas callbacks registerCallback: aBlock) -> anObject