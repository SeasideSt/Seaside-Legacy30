registration
registerImageCallback: aBlock
	^ self storeCallback: (WAImageCallback new block: aBlock)