registration
registerMapCallback: aBlock 
	^ self store: (WAMapCallback new block: aBlock)