*seaside-environment
resetAll
	self deprecatedApi: 'Use WAEnvironment>>reloadApplications.'.
	WAEnvironment reloadApplications