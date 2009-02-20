registration
registerDefaultActionCallback: aBlock 
	^ self store: (WADefaultActionCallback on: aBlock)