initialization
initializeOn: aStream 
	self initialize.
	committed := false.
	externalStream := aStream