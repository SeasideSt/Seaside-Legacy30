running
checkClass: aContext 
	(aContext selectedClass isMeta not
		and: [ (aContext selectedClass includesSelector: #initialize)
		and: [ (aContext selectedClass includesBehavior: WAObject) not
		and: [
			 aContext selectedClass class methodDict noneSatisfy: [ :each | 
				matcher 
					executeTree: each parseTree 
					initialAnswer: false ] ] ] ])
		ifTrue: [ result addClass: aContext selectedClass selector: #initialize ]