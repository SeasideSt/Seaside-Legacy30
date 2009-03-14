initialization
initializeOn: aHandler
	super initializeOn: aHandler.
	cacheEditor := WACacheEditor on: self handler cache