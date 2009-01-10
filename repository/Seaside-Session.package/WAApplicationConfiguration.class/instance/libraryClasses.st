description
libraryClasses
	^ WAFileLibrary allSubclasses asSortedCollection: [ :a :b | a name <= b name ]