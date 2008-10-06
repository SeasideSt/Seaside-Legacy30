testing
testLiveUpdate
	| handler |
	handler := WAFileHandler named: '/seaside/files/'.
	self
		assertFile: 'misc.js'
		contentType: 'application/x-javascript' seasideMimeType
		handler: handler
		symbol: #miscJs
		library: WAStandardFiles new