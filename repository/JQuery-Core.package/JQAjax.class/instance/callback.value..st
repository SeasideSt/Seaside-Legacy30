callbacks
callback: aBlock value: anObject
	"Defines aBlock as a callback of the receiver."
	
	self initializeCallbacks.
	self
		addParameter: (owner canvas callbacks
			registerCallback: aBlock)
		value: anObject