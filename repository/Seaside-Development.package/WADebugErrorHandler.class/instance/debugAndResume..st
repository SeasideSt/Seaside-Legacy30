actions
debugAndResume: anException
	"If the user presses Proceed in the debugger, execution will continue after the call to
	 #open:. If they close the debugger, the process is terminated and the stack unwound.
	There was previously an #ifCurtailed: block around the #open: call below to try to
	catch the process termination but this also ended up being called when the user
	restarted a context in the debugger."

	[ self open: anException ] value.

	^ anException isResumable
		ifTrue: [ anException resume ]
		ifFalse: [ self unableToResumeResponse ]