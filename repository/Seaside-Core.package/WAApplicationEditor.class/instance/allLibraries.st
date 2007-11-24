accessing
allLibraries
	^ WAFileLibrary allSubclasses asArray asSortedCollection: [ :a :b | a name <= b name ]