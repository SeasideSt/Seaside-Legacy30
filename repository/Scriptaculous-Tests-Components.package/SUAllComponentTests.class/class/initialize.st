initialization
initialize
	(WAAdmin register: self asApplicationAt: 'javascript/scriptaculous-components')
		preferenceAt: #scriptGeneratorClass put: PTScriptGenerator;
		addLibrary: PTDeploymentLibrary;
		addLibrary: SUDeploymentLibrary;
		addLibrary: SUComponentLibrary;
		addLibrary: SUAllTestLibrary