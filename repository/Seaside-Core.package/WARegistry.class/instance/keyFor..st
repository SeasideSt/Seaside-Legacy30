public
keyFor: aRequestHandler
	^ self
		keyFor: aRequestHandler
		ifAbsent: [ WAUnregisteredHandlerError raiseSignal ]