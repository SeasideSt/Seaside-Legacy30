description
exceptionHandlerClasses
	^ WAErrorHandler withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]