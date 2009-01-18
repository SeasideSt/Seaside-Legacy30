initialization
initializeWithRequest: aRequest
	self initialize.
	handlers := OrderedCollection new.
	request := aRequest