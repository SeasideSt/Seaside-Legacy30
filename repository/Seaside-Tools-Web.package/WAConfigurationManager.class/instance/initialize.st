initialize-release
initialize 
	super initialize.
	editor := WADispatcherEmptyPage on: self.
	propertiesCache := Dictionary new