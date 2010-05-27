initialization
initialize
	(WAAdmin register: self asApplicationAt: 'javascript/scriptaculous-components')
		addLibrary: PTDeploymentLibrary;
		addLibrary: SUDeploymentLibrary;
		addLibrary: SUComponentLibrary;
		addLibrary: SUAllTestLibrary