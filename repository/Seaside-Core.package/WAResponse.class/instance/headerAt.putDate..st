accessing-headers
headerAt: aKeyString putDate: aDateAndTime 
	"Convenience method that sets a response header with aString and aDateAndTime. If the header had already been set, the new value overwrites the previous one."
	^ self 
		headerAt: aKeyString
		put: (GRPrinter httpDate print: aDateAndTime)