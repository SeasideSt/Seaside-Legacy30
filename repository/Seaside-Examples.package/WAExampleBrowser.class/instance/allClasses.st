helper
allClasses
	^ (WAComponent allSubclasses
		select: [ :each |
			each class selectors
				anySatisfy: [ :sel | sel beginsWith: self selectorPrefix ] ])
		asSortedCollection: [ :a :b | a name < b name ]