accessing
urlFor: aRequestHandler
	^ self url
		addToPath: (handlers
			keyAtValue: aRequestHandler
			ifAbsent: [ WAUnregisteredHandlerError signal ]);
		yourself