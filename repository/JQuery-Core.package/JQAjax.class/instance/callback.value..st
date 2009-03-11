callbacks
callback: aBlock value: anObject
	"Register aBlock as a secondary callback. anObject is interpreted as Javascript on the client-side, the result will be sent back to the server and passed into aBlock. Multiple secondary callbacks can be defined with one receiver."

	self enableCallbacks.
	self addParameter: (owner canvas callbacks
		store: (WAValueCallback on: aBlock)) 
			-> anObject