*scriptaculous-core
registerAjaxCallback: aBlock
	^ self storeCallback: (SUCallback new block: aBlock)