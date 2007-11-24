defaults
mainClasses
	^ WAMain allSubclasses asSortedCollection: [ :a :b | a name <= b name ]