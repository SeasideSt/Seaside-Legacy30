registration
registerValueCallback: aBlock
	^ self storeCallback: (WAValueCallback new block: aBlock)