processing
handleFiltered: aRequestContext named: aString
	(self entryPointAt: aString ifAbsent: [ aRequestContext responseFactory notFound return ])
		handle: aRequestContext