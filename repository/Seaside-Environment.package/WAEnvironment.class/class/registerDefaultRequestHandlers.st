registration
registerDefaultRequestHandlers
	WAFileHandler default: (WAFileHandler named: 'files').
	WAFileHandler default preferenceAt: #fileHandlerListingClass put: WAHtmlFileHandlerListing.
	WAAdmin defaultDispatcher register: WAFileHandler default