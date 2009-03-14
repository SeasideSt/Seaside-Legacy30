*seaside-tools-core
resetAll
	self
		seasideDeprecatedApi: 'WADispatcher class>>#resetAll'
		details: 'Use WAAdmin>>#reloadApplications.'.
	WAAdmin reloadApplications