as yet unclassified
seasideAllTests
	(WAAdmin register: WAAllTests asApplicationAt: 'tests/alltests-ajaxified')
		preferenceAt: #sessionClass put: WAExpirySession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: self