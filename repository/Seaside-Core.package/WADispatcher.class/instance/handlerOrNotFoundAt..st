private
handlerOrNotFoundAt: aString
	"returns the request handler registered under the given key
	if no handler exists for such a key a WANotFoundHandler is returned"
	^self
		entryPointAt: aString
		ifAbsent: [ self notFoundHandler ]