testing
testContentType
	| contentType |
	self application preferenceAt: #mimeType put: 'application/xhtml+xml'.
	self application preferenceAt: #charSet put: 'iso-8859-1'.
	
	contentType := WAResponse new contentType.
	self assert: contentType main = 'application'.
	self assert: contentType sub = 'xhtml+xml'.
	self assert: contentType charset = 'iso-8859-1'