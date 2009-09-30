running
checkClass: aContext 
	| selectedClass |
	selectedClass := aContext selectedClass.
	(selectedClass superclass = Object and: [ selectedClass ~= GRObject ]) ifTrue: [ result addClass: selectedClass ]