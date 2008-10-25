initialization
initialize
	| application |
	application := WAAdmin register: self at: 'tests/jquery'.
	application 
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQAllTestsLibrary