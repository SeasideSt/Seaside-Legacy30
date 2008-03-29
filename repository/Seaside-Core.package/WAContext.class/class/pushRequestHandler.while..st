convenience
pushRequestHandler: aRequestHandler while: aBlock
	^WACurrentContext value
		pushRequestHandler: aRequestHandler while: aBlock