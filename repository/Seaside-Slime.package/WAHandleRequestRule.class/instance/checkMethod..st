running
checkMethod: aContext
	(aContext selectedClass includesBehavior: WARequestHandler)
		ifTrue: [ super checkMethod: aContext ]