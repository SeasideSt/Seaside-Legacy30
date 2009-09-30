instance creation
receiver: anObject selector: aSymbol 
	^ GRUnboundDelayedSend basicNew 
		initializeWithReceiver: anObject
		selector: aSymbol