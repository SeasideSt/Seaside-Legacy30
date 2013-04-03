running
checkMethod: aContext 
	aContext compiledMethod literals do: [ :each | 
		(each isVariableBinding and: [ self classNames includes: each key ]) ifTrue: [
			result 
				addClass: aContext selectedClass
				selector: aContext selector.
			result addSearchString: each key ] ]