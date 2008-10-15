callbacks
callback: aBlock
	"Register aBlock as a secondary callback. anObject is interpreted as Javascript on the client-side, the result will be sent back to the server and passed into aBlock. Multiple secondary callbacks can be defined with one receiver."
	
	self initializeCallbacks.
	self
		addParameter: (owner canvas callbacks
			registerAjaxCallback: aBlock)
		value: nil