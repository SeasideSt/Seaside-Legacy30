initialization
setContext: aRenderContext
	super setContext: aRenderContext.
	self url: aRenderContext actionUrl withoutParameters.
	self addParameters: aRenderContext actionUrl parameters.
	self registerCallbackIn: aRenderContext callbacks