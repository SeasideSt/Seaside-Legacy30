testing
testKalseyTabsCascade
	| handler |
	handler := WAFileHandler named: '/seaside/files/'.
	self
		assertFile: 'kalseyTabs.css'
		contentType: WAMimeType textCss
		handler: handler
		symbol: #kalseyTabsCss
		library: WAStandardFiles new