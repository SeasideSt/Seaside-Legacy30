initialization
setContext: aRenderContext
	super setContext: aRenderContext.
	self url: aRenderContext actionUrl withoutQuery.
	self addParameters: aRenderContext actionUrl queryFields.
	self registerCallbackIn: aRenderContext callbacks