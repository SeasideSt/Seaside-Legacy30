initialization
initialize
	| application |
	application := WAAdmin register: self at: 'tests/jquery'.
	application 
		addLibrary: JQProductionLibrary;
		addLibrary: JQFileLibrary