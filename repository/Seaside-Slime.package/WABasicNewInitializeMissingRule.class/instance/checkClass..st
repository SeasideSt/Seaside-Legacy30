running
checkClass: aContext 
	(aContext selectedClass isMeta not and: 
		[ (aContext selectedClass includesSelector: #initialize) and: 
			[ (aContext selectedClass includesBehavior: GRObject) not and: 
				[ (aContext selectedClass includesBehavior: GRNotification) not and: 
					[ (aContext selectedClass includesBehavior: GRError) not and: 
						[ aContext selectedClass class methodDict noneSatisfy: 
							[ :each | 
							matcher 
								executeTree: each parseTree
								initialAnswer: false ] ] ] ] ] ]) ifTrue: 
		[ result 
			addClass: aContext selectedClass
			selector: #initialize ]