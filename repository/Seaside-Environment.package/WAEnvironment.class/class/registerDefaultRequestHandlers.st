registration
registerDefaultRequestHandlers
	WAFileHandler default: WAFileHandler new.
	WAFileHandler default preferenceAt: #fileHandlerListingClass put: WAHtmlFileHandlerListing.
	WAAdmin defaultDispatcher register: WAFileHandler default at: 'files'