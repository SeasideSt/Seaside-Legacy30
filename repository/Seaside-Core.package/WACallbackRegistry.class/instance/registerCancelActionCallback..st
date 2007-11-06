registration
registerCancelActionCallback: aBlock
	^ self storeCallback: (WACancelActionCallback new block: aBlock)