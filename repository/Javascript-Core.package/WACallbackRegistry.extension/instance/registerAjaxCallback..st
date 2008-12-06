*javascript-core
registerAjaxCallback: aBlock 
	^ self storeCallback: (JSAjaxCallback new block: aBlock)