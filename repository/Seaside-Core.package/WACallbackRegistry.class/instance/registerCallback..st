registration
registerCallback: aBlock
	^ self storeCallback: (WAValueCallback new block: aBlock)