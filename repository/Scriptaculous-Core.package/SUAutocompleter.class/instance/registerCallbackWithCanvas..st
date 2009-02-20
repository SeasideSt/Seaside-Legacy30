initialization
registerCallbackWithCanvas: aCanvas
	self paramName: (aCanvas callbacks store: (JSAjaxCallback on: [:v | self processWith: v ]))