processing
handleRequest
	| renderContinuation |
	[ self withNotificationHandlerDo: [ 
		self renderingContext callbacks handle: self requestContext ] ]
			ensure: [
				self request isXmlHttpRequest ifTrue: [ 
					self states reset.
					self updateStates ] ].
	renderContinuation := self createRenderContinuation.
	renderContinuation updateStates.
	(self shouldRedirect) 
		ifTrue: [ self redirectToContinuation: renderContinuation ]
		ifFalse: [ renderContinuation value ]