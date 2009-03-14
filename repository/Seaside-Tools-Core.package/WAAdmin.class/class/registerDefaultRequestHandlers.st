registration
registerDefaultRequestHandlers
	WAFileHandler default: (WAFileHandler named: 'files').
	WAFileHandler default preferenceAt: #fileHandlerListingClass put: WAHtmlFileHandlerListing.
	WADispatcher default register: WAFileHandler default