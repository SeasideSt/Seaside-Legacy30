accessing
urlFor: aRequestHandler
	^ self baseUrl
		addToPath: (handlers
			keyAtValue: aRequestHandler
			ifAbsent: [ WAUnregisteredHandlerError signal ]);
		yourself