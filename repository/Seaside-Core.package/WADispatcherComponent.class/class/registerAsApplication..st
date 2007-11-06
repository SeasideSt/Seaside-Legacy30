instance-creation
registerAsApplication: aString
	^ (super registerAsApplication: aString)
		addLibrary: WADispatcherFiles;
		yourself