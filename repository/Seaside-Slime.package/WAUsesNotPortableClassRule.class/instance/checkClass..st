running
checkClass: aContext 
	(aContext selectedClass allSuperclasses
		anySatisfy: [ :each | WASlime notPortableClasses includes: each name ]) ifTrue: [
			result addClass: aContext selectedClass.
			result addSearchString: aContext selectedClass superclass name ]