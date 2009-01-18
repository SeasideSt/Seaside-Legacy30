processing
handleRequest
	| renderContinuation |
	[ self withNotificationHandlerDo: [ 
		self renderingContext callbacks handle: self requestContext ] ]
			ensure: ["this code is not yet tested with the response refactoring because the javascript code isn't working with it yet. but I think it will work -- jf'" 
				self request isXmlHttpRequest ifTrue: [ self states snapshot ] ].
	renderContinuation := self createRenderContinuation.
	(self shouldRedirect) 
		ifTrue: [ self redirectToContinuation: renderContinuation ]
		ifFalse: [ renderContinuation value ]