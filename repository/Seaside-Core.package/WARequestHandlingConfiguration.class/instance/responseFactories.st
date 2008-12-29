private
responseFactories
	^ WAResponseFactory withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ] 