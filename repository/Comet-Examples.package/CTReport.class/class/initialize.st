initialization
initialize
	| application |
	application := self registerAsApplication: 'comet/report'.
	application addLibrary: JQDevelopmentLibrary; addLibrary: CTLibrary