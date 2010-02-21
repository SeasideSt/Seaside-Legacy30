initialization
initialize
	(WAAdmin register: self asApplicationAt: 'javascript/scriptaculous')
		preferenceAt: #scriptGeneratorClass put: PTScriptGenerator;
		addLibrary: PTDeploymentLibrary;
		addLibrary: SUDeploymentLibrary;
		addLibrary: SUAllTestLibrary