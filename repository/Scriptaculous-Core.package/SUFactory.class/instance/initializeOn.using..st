initialization
initializeOn: aContext using: aBlock
	self initialize.
	context := aContext.
	block := aBlock