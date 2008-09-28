registration
registerDefaultRequestHandlers
	WADispatcher resetDefault.
	WAFileHandler default: (WAFileHandler named: 'files').
	WADispatcher default register: WAFileHandler default