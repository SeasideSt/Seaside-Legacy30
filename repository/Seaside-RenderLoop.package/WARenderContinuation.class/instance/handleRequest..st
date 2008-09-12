processing
handleRequest: aRequest 
	aRequest isXmlHttpRequest ifTrue: [ self requestContext onRespond: [ :r | states snapshot ] ].
	self withNotificationHandler: [ self processCallbacks: aRequest ].
	((self shouldRedirect: aRequest) 
		ifTrue: [ self newRedirectContinuation ]
		ifFalse: [ self newRenderContinuation ]) run