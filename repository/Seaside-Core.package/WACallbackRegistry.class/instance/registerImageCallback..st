registration
registerImageCallback: aBlock 
	^ self store: (WAImageCallback new block: aBlock)