initialization
initialize
	| application |
	application := WAAdmin 	register: self asApplicationAt: 'comet/counter'.
	application addLibrary: SUDeploymentLibrary; addLibrary: CTLibrary