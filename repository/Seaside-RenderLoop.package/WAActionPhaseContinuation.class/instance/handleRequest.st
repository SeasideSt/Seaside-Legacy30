processing
handleRequest
	| renderContinuation |
	[ self withNotificationHandlerDo: [ 
		self renderingContext callbacks handle: self requestContext ] ]
			ensure: [
				self request isXmlHttpRequest ifTrue: [ self captureState ] ].
	renderContinuation := self createRenderContinuation.
	renderContinuation captureState.
	(self shouldRedirect) 
		ifTrue: [ self redirectToContinuation: renderContinuation ]
		ifFalse: [ renderContinuation value ]