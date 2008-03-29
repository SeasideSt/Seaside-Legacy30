private
processCallbacks: aRequest 
	| lastPosition callbackStream |
	lastPosition := nil.
	callbackStream := renderContext callbackStreamForRequest: aRequest.
	[ callbackStream position = lastPosition ] whileFalse: 
		[ lastPosition := callbackStream position.
		self root decorationChainDo: [ :each | each processCallbackStream: callbackStream ] ].
	callbackStream atEnd ifFalse: [ self unprocessedCallbacks: callbackStream upToEnd ]