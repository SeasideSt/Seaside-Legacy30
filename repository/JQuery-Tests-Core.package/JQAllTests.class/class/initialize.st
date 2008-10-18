initialization
initialize
	| application |
	application := self registerAsApplication: 'tests/jquery'.
	application
		addLibrary: JQDevelopmentLibrary;
		addLibrary: JQUiDevelopmentLibrary