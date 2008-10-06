testing
testDocumentMimeTypeDoesNotSetCachingInformation
	"see http://code.google.com/p/seaside/issues/detail?id=74"
	response := WAResponse document: 'foo=42' mimeType: 'text/javascript'.
	self assert: response expiresDate isNil.
	self assert: response headers isEmpty.