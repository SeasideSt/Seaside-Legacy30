initialization
initializeOn: aDispatcher
	super initializeOn: aDispatcher.
	self setEmptyPage.
	self selection: aDispatcher
