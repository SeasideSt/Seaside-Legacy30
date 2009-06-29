initialization
setCanvas: aCanvas
	super setCanvas: aCanvas.
	self url: aCanvas actionUrl withoutParameters.
	self addParameters: aCanvas actionUrl parameters.
	self registerCallbackWithCanvas: aCanvas.