testing
testFindTokens

	| mimeType tokens |
	mimeType := 'application/xhtml+xml'.
	tokens := mimeType findTokens: '/'.
	self assert: tokens size = 2.
	self assert: tokens first = 'application'.
	self assert: tokens second = 'xhtml+xml'