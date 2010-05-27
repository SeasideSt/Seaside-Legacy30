initialization
initialize
	(WAAdmin register: self asApplicationAt: 'javascript/scriptaculous')
		addLibrary: PTDeploymentLibrary;
		addLibrary: SUDeploymentLibrary;
		addLibrary: SUAllTestLibrary