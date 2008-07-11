initialization
setCanvas: aCanvas
	super setCanvas: aCanvas.
	self url: aCanvas context actionUrl withoutParameters.
	self addParameters: aCanvas context actionUrl parameters.
	self registerCallbackWithCanvas: aCanvas.