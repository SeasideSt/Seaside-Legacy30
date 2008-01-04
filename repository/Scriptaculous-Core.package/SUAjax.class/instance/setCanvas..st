initialization
setCanvas: aCanvas
	super setCanvas: aCanvas.
	self url: aCanvas context actionUrl withoutParameters.
	self addParameters: aCanvas context actionUrl parameters.
	self addParameter: (aCanvas callbacks registerAjaxCallback: [ self process ])