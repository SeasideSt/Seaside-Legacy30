initialization
initialize
	(WAAdmin register: self asApplicationAt: 'browse') addLibrary: WAHandlerEditorFiles.
	WADispatcher default 
		defaultName: 'browse'