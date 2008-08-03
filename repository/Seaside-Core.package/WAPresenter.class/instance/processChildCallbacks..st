request processing
processChildCallbacks: aStream
	self nextPresentersDo: [:ea | ea processCallbackStream: aStream]