actions
handleException: anException
	"Squeak's debugger steps through code in the UI process and so code will therefore
	not have access to the current request context through the process variable. If so
	a WARequestContextNotFound is signaled and we can use resume it with the correct
	value."
	((anException isKindOf: WARequestContextNotFound)
		and: [ requestContext notNil ])
			ifTrue: [ anException resume: self requestContext ].
		
	^ super handleException: anException