public
urlFor: aRequestHandler
	^ self
		urlFor: aRequestHandler
		ifAbsent: [ WAUnregisteredHandlerError signal ]