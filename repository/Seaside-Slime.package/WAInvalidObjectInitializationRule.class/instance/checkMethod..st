running
checkMethod: aContext 
	(aContext selectedClass isMeta not 
		and: [ (aContext selector beginsWith: #initialize) 
		and: [ aContext selector numArgs > 0
		and: [ aContext selectedClass ~= GRObject
		and: [ (aContext selectedClass includesBehavior: GRObject)
		and: [ (aContext superMessages includes: aContext selector) not 
		and: [ aContext selfMessages noneSatisfy: [ :each | each beginsWith: #initialize ] ] ] ] ] ] ]) 
			ifTrue: [ result addClass: aContext selectedClass selector: aContext selector ]