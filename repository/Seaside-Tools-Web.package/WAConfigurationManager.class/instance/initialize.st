initialize-release
initialize 
	super initialize.
	currentPath := '/'.
	editor := WAConfigurationNavigator new.
	editor add: (WADispatcherEmptyPage on: self) label: 'Config'.
	editor selectFirst