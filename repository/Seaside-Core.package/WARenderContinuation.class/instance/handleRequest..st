processing
handleRequest: aRequest
	aRequest isXmlHttpRequest ifTrue: [
		self context onRespond: [ :r | states snapshot ] ].
	self withNotificationHandler: [ self processCallbacks: aRequest ].
	((self shouldRedirect: aRequest)
		ifTrue: [ self newRedirectContinuation ]
		ifFalse: [ self newRenderContinuation ])
			run