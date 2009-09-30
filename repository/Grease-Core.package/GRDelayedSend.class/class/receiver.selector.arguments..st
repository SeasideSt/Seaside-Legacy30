instance creation
receiver: anObject selector: aSymbol arguments: anArray 
	^ GRBoundDelayedSend basicNew 
		initializeWithReceiver: anObject
		selector: aSymbol
		arguments: anArray