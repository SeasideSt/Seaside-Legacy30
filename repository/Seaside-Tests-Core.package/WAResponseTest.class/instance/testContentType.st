testing
testContentType
	self response contentType: WAMimeType textHtml.
	self assert: (self response headerAt: 'Content-Type') seasideString = 'text/html'