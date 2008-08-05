description
notFoundHandlerClasses
	^ WANotFoundHandler withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]