registration
registerDefaultActionCallback: aBlock
	^ self storeCallback: (WADefaultActionCallback new block: aBlock)