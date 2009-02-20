registration
registerCancelActionCallback: aBlock 
	^ self store: (WACancelActionCallback on: aBlock)