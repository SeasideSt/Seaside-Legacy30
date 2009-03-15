*seaside-environment
resetAll
	self
		seasideDeprecatedApi: 'WADispatcher class>>#resetAll'
		details: 'Use WAEnvironment>>#reloadApplications.'.
	WAEnvironment reloadApplications