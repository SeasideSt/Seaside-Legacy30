processing
pushSelfDuring: aBlock
	^WAContext
		pushRequestHandler: self
		while: aBlock