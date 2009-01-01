actions
handleException: anException
	"Squeak's debugger steps through code in the UI process and so code will therefore
	not have access to the current request context through the process variable. If so
	a WARequestContextRequest is signaled and we can resume it with the correct
	value."
	(WARequestContextRequest handles: anException)
		ifTrue: [ anException resume: self requestContext ].
	
	"If for some reason we are asked to handle an exception for which we have no
	handling behaviour defined, just pass."	
	^ anException pass