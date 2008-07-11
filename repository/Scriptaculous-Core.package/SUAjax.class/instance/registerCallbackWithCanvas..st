initialization
registerCallbackWithCanvas: aCanvas
	self addParameter: (aCanvas callbacks registerAjaxCallback: [ self process ])