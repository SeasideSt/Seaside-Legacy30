callbacks
callback: aBlock
	value := false.
	callback := aBlock fixCallbackTemps.
	super callback: [value := true]