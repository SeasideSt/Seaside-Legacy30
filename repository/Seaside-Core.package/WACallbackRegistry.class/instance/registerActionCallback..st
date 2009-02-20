registration
registerActionCallback: aBlock 
	^ self store: (WAActionCallback new block: aBlock)