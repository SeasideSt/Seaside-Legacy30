registration
registerDefaultRequestHandlers
	WADispatcher resetDefault.
	WADispatcher default register: (WAFileHandler named: 'files').