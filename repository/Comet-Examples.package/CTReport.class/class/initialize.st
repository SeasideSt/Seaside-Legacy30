initialization
initialize
	| application |
	application := self registerAsApplication: 'comet/report'.
	application addLibrary: JQDeploymentLibrary; addLibrary: CTLibrary