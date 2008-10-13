*javascript-core
registerAjaxCallback: aBlock 
	^ self storeCallback: (JSCallback new block: aBlock)