initialization
registerCallbackWithCanvas: aCanvas
	self addParameter: (aCanvas callbacks store: (JSAjaxCallback on: [ self process ]))