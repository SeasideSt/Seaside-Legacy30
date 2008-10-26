initialization
initialize
	(WAAdmin register: self asApplicationAt: 'tests/scriptaculous-components')
		addLibrary: SUDeploymentLibrary;
		addLibrary: SUComponentLibrary;
		addLibrary: SUAllTestLibrary