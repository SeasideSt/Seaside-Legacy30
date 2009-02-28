running
checkMethod: aContext 
	aContext compiledMethod literals do: [ :each | 
		(each isSymbol and: [ self selectors includes: each ]) ifTrue: [
			result 
				addClass: aContext selectedClass
				selector: aContext selector.
			result addSearchString: '{' ] ]