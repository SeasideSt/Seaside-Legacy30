running
checkClass: aContext 
	| selectedClass |
	selectedClass := aContext selectedClass.
	(selectedClass superclass = Object and: [ selectedClass ~= WAPlatformObject ])
		ifTrue: [ result addClass: selectedClass ]