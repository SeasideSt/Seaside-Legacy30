defaults
errorHandlerClasses
	^ WAErrorHandler withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]