description
redirectHandlerClasses
	^ WARedirectHandler withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]