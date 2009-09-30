initialization
initializeWithReceiver: anObject selector: aSymbol arguments: anArray
	self initializeWithReceiver: anObject selector: aSymbol.
	arguments := anArray asArray