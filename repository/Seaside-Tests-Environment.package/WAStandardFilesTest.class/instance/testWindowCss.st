testing
testWindowCss
	| handler |
	handler := WAFileHandler named: '/seaside/files/'.
	self
		assertFile: 'window.css'
		contentType: WAMimeType textCss
		handler: handler
		symbol: #windowCss
		library: WAStandardFiles new