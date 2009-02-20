registration
registerUploadCallback: aBlock 
	^ self store: (WAUploadCallback new block: aBlock)