processing
processCallbackStream: aCallbackStream
	processTime := Time millisecondClockValue.
	self withDeprecatedHandlerDo: [ super processCallbackStream: aCallbackStream ]