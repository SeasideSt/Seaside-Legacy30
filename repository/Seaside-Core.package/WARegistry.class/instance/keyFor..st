public
keyFor: aRequestHandler
	^ self
		keyFor: aRequestHandler
		ifAbsent: [ WAUnregisteredHandlerError signal ]