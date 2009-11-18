initialization
initialize
	(WAAdmin register: self asApplicationAt: 'tests/scriptaculous')
		addLibrary: PTDeploymentLibrary;
		addLibrary: SUDeploymentLibrary;
		addLibrary: SUAllTestLibrary