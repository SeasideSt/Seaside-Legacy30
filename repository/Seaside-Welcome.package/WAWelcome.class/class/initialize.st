initialization
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'welcome'.
	WAAdmin defaultDispatcher defaultName: 'welcome'.
	application
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQUiLightnessTheme