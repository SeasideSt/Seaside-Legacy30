initialization
initializeWithRequest: aRequest response: aResponse codec: aCodec
	self initialize.
	handlers := OrderedCollection new.
	request := aRequest.
	response := aResponse.
	codec := aCodec