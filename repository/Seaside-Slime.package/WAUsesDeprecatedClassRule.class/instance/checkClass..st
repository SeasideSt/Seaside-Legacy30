running
checkClass: aContext 
	(aContext selectedClass allSuperclasses anySatisfy: [ :each | WASlime deprecatedClasses includes: each name ])
		ifTrue: [ result addClass: aContext selectedClass ]