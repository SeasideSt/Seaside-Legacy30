running
checkMethod: aContext 
	(aContext sourceCode asString isKindOf: ByteString)
		ifFalse: [ result addClass: aContext selectedClass selector: aContext selector ]