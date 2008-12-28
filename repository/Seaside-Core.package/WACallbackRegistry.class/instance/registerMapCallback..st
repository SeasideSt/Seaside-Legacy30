registration
registerMapCallback: aBlock
	^ self storeCallback: (WAMapCallback new block: aBlock)