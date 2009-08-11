processing
handleFiltered: aRequestContext
	(aRequestContext request isGet and: [ aRequestContext request url slash not ]) ifTrue: [ 
		aRequestContext responseGenerator 
			redirectTo: (aRequestContext request url copy
				takeServerParametersFromRequest: aRequestContext request;
				slash: true;
				yourself) ].
	super handleFiltered: aRequestContext