initialization
initialize
	(WAAdmin register: self asApplicationAt: 'browse') 
		addLibrary: WAToolFiles.
	WADispatcher default defaultName: 'browse'