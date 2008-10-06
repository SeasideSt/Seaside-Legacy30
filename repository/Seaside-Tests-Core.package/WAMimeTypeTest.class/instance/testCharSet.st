testing
testCharSet
	| mimeType |
	mimeType := WAMimeType fromString: 'text/html'.
	mimeType charset: 'utf-8'.
	self assert: mimeType seasideString = 'text/html;charset=utf-8'