signaling
signalKey: aSymbol
	"convenience method to signal that the given Symbol is a missing key"
	^(self key: aSymbol)
		signal