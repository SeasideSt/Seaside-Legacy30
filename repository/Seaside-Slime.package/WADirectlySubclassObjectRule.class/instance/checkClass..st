running
checkClass: aContext 
	| selectedClass |
	selectedClass := aContext selectedClass.
	(selectedClass superclass = Object and: [ selectedClass ~= WAObject ])
		ifTrue: [ result addClass: selectedClass ]