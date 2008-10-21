registration
registerUploadCallback: aBlock
	^ self storeCallback: (WAUploadCallback new block: aBlock)