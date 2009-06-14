initialization
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'tests/jquery-ui'.
	application
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary