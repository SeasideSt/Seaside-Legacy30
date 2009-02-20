*javascript-core
registerAjaxCallback: aBlock 
	^ self store: (JSAjaxCallback new block: aBlock)