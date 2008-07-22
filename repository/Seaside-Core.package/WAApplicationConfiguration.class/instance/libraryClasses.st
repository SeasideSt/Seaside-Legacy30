attributes
libraryClasses
	^ WALibrary allSubclasses asSortedCollection: [ :a :b | a name <= b name ]