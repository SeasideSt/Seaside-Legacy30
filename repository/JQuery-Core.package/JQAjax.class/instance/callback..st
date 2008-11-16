callbacks
callback: aBlock
	"Register aBlock as a primary callback of the receiver. It only makes sense to have a single primary callback registered per instance. The primary callback must generate a response."
	
	callback := aBlock fixCallbackTemps