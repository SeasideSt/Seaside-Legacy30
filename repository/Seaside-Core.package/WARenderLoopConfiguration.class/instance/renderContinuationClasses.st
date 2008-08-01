attributes
renderContinuationClasses
	^ WARenderContinuation withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]