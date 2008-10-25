initialization
initialize
	| application |
	application := WAAdmin register: self at: 'tests/jquery-ui'.
	application
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQUiAllTestsLibrary