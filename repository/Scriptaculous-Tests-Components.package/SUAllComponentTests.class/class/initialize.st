initialization
initialize
	(WAAdmin register: self asApplicationAt: 'tests/scriptaculous-components')
		addLibrary: PTDeploymentLibrary;
		addLibrary: SUDeploymentLibrary;
		addLibrary: SUComponentLibrary;
		addLibrary: SUAllTestLibrary