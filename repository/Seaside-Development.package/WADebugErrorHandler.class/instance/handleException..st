actions
handleException: anException
	"Squeak's debugger steps through code in the UI process and so code will therefore
	not have access to the current request context through the process variable. Before
	opening a debugger, we store the request context and can use it to resume the
	error with the correct value."
	((anException isKindOf: WARequestContextNotFound)
		and: [ requestContext notNil ])
			ifTrue: [ anException resume: requestContext ].
		
	^ super handleException: anException