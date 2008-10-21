registration
registerDefaultRequestHandlers
	WAFileHandler default: (WAFileHandler named: 'files').
	WADispatcher default register: WAFileHandler default