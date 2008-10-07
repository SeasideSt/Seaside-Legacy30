initialization
initializeWithContext: aContext
	context := aContext.
	callbacks := Dictionary new.
	count := WAValueHolder with: 1.