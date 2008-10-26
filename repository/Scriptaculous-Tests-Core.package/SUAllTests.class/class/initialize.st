initialization
initialize
	(WAAdmin register: self asApplicationAt: 'tests/scriptaculous')
		addLibrary: SUDeploymentLibrary;
		addLibrary: SUAllTestLibrary