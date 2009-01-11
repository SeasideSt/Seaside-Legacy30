processing
handleRequest
	| renderContinuation |
	self request isXmlHttpRequest 
		ifTrue: [ self requestContext onRespond: [ :r | states snapshot ] ].
	self withNotificationHandlerDo: [ 
		self renderingContext callbacks handle: self requestContext ].
	renderContinuation := self newRenderPhaseContinuation.
	(self shouldRedirect) 
		ifTrue: [ self redirectToContinuation: renderContinuation ]
		ifFalse: [ renderContinuation value ]