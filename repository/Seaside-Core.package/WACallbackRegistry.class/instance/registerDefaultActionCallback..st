registration
registerDefaultActionCallback: aBlock 
	^ self store: (WADefaultActionCallback new block: aBlock)