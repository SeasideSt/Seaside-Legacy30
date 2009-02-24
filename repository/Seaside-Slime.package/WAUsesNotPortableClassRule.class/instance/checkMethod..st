running
checkMethod: aContext 
	aContext compiledMethod literals do: [ :each | 
		(each isVariableBinding and: [ WASlime notPortableClasses includes: each key ]) ifTrue: [
			result 
				addClass: aContext selectedClass
				selector: aContext selector.
			result addSearchString: each key ] ]