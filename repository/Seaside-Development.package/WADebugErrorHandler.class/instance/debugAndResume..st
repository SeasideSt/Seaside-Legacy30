actions
debugAndResume: anException
	"Squeak's debugger steps through code in the UI process and so code will therefore
	not have access to the current request context through the process variable. Before
	opening a debugger, we store the request context and can use it to resume the
	error with the correct value."
	requestContext isNil ifTrue: [ requestContext := self requestContext ].

	"If the user presses Proceed in the debugger, execution will continue after the call to
	 #open:. If they close the debugger, the process is terminated and the stack unwound.
	There was previously an #ifCurtailed: block around the #open: call below to try to
	catch the process termination but this also ended up being called when the user
	restarted a context in the debugger."

	[ self open: anException ] value.

	^ anException isResumable
		ifTrue: [ anException resume ]
		ifFalse: [ self unableToResumeResponse ]