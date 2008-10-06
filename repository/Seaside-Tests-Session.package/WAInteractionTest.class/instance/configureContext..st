private
configureContext: aRequestContext
	super configureContext: aRequestContext.
	aRequestContext request: WARequest blankRequest.
	aRequestContext response: WAResponse new