registration
registerValueCallback: aBlock 
	^ self store: (WAValueCallback new block: aBlock)