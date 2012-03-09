description
libraryClasses
	^ WAFileLibraryBase libraries asSortedCollection: [ :a :b | a name <= b name ]