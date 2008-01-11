private
processCallbacks: aRequest
	| lastPosition callbackStream |
	lastPosition := nil.
	callbackStream := context callbackStreamForRequest: aRequest.
	[ callbackStream position = lastPosition ] whileFalse: [
		Transcript show: '.'.
		lastPosition := callbackStream position.
		self root decorationChainDo: [ :each |
			each processCallbackStream: callbackStream ] ].
	callbackStream atEnd
		ifFalse: [ self unprocessedCallbacks: callbackStream upToEnd ]