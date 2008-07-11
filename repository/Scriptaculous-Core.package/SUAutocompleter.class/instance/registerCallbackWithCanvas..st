initialization
registerCallbackWithCanvas: aCanvas
	self paramName: (aCanvas callbacks registerAjaxCallback: [:v | self processWith: v])