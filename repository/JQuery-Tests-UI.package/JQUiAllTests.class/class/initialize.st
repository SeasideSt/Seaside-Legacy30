initialization
initialize
	| application |
	application := WAAdmin register: self at: 'tests/jquery-ui'.
	application
		addLibrary: JQProductionLibrary;
		addLibrary: JQUiProductionLibrary;
		addLibrary: JQUiAllTestsLibrary