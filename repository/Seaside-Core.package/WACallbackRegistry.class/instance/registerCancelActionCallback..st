registration
registerCancelActionCallback: aBlock 
	^ self store: (WACancelActionCallback new block: aBlock)