description
expiredKeyHandlerClasses
	^ WAExpiredKeyHandler withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]