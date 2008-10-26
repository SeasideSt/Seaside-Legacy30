initialization
initialize
	(WAAdmin register: self asApplicationAt: 'tests/alltests')
		preferenceAt: #sessionClass put: WAExpirySession