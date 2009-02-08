processing
prepareRoot: aComponent
	(WAAllPresenterGuide client:
		(WAInitialRequestVisitor request: self requestContext request))
		start: aComponent