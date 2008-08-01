attributes
redirectContinuationClasses
	^ WARedirectContinuation withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]