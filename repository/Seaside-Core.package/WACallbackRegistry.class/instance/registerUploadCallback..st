registration
registerUploadCallback: aBlock 
	^ self store: (WAUploadCallback on: aBlock)