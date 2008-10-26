initialization
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'tests/jquery'.
	application 
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQAllTestsLibrary