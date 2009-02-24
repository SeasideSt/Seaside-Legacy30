running
checkMethod: aContext 
	aContext compiledMethod literals do: [ :each | 
		(each isSymbol and: [ WASlime braceSelectors includes: each ]) ifTrue: [
			result 
				addClass: aContext selectedClass
				selector: aContext selector.
			result addSearchString: '{' ] ]