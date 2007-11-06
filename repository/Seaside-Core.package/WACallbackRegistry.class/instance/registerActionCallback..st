registration
registerActionCallback: aBlock
	^ self storeCallback: (WAActionCallback new block: aBlock)