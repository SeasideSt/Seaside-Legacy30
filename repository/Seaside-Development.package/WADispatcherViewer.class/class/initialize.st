initialization
initialize
	(self registerAsApplication: 'browse') addLibrary: WAHandlerEditorFiles.
	WADispatcher default 
		defaultName: 'browse'