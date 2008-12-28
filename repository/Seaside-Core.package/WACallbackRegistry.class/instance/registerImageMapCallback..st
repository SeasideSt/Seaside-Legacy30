registration
registerImageMapCallback: aBlock
	^ self storeCallback: (WAImageMapCallback new block: aBlock)