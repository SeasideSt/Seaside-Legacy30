initialization
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'javascript/jquery-ui'.
	application
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary