accessing
pushRequestHandler: aRequestHandler while: aBlock
	requestHandlers addFirst: aRequestHandler.
	^aBlock
		ensure: [ requestHandlers removeFirst ]