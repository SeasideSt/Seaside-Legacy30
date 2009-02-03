initialization
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'tests/jquery'.
	application 
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQAllTestsLibrary.

	application := WAAdmin register: WAAllTests asApplicationAt: 'tests/alltests-ajaxified'.
	application
		preferenceAt: #sessionClass put: WAExpirySession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQAjaxifierLibrary