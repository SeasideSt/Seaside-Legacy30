attributes
sessionClasses
	^ WASession withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]