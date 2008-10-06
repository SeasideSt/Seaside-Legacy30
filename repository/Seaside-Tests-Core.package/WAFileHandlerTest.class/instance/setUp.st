running
setUp
	super setUp.
	handler := (WAFileHandler named: 'files')
		setParent: (WADispatcher named: 'seaside');
		yourself