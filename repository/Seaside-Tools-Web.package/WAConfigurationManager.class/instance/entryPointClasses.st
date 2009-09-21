accessing
entryPointClasses
	^ WAEntryPoint concreteSubclasses asSortedCollection: [ :a :b | a name < b name ]