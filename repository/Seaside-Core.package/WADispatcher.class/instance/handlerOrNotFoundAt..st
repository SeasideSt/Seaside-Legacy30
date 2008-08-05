private
handlerOrNotFoundAt: aString
	"returns the request handler registered under the given key
	if no handler exists for such a key a WANotFoundHandler is returned"
	^self entryPoints
		at: aString
		ifAbsent: [ WANotFoundHandler new ]