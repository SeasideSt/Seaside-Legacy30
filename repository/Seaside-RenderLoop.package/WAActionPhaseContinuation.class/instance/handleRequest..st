processing
handleRequest: aRequest 
	| renderContinuation |
	aRequest isXmlHttpRequest ifTrue:
		[ self requestContext onRespond: [ :r | states snapshot ] ].
	self withNotificationHandler:
		[ self renderingContext callbacks processWithRequest: aRequest ].
	
	aRequest isXmlHttpRequest ifTrue:
		[ ^ WAResponseExpectedError raiseSignal: 'XML HTTP requests must return a response during callback evaluation.' ].
	
	renderContinuation := self newRenderPhaseContinuation.	
	
	(self shouldRedirect: aRequest) 
		ifTrue: [ self respond: [ :response |
					renderContinuation setStates: self newStates.
					response redirectTo: renderContinuation url ] ]
		ifFalse: [ renderContinuation value: aRequest ]