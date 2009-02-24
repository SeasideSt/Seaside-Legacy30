running
checkMethod: aContext
	(aContext selectedClass includesBehavior: WASession)
		ifTrue: [ super checkMethod: aContext ]