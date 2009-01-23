processing
handleRequest
	| renderContinuation |
	[ self withNotificationHandlerDo: [ 
		self renderContext callbacks handle: self requestContext ] ]
			ensure: [
				self request isXmlHttpRequest ifTrue: [ self captureState ] ].
	renderContinuation := self createRenderContinuation.
	renderContinuation captureState.
	(self shouldRedirect) 
		ifTrue: [ self redirectToContinuation: renderContinuation ]
		ifFalse: [ renderContinuation basicValue ]