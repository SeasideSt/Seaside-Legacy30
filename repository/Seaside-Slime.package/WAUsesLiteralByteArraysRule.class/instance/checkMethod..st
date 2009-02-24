running
checkMethod: aContext 
	aContext compiledMethod literals do: [ :each | 
		(each isLiteral and: [ each isKindOf: ByteArray ]) ifTrue: [
			result 
				addClass: aContext selectedClass
				selector: aContext selector.
			result addSearchString: '#[' ] ]