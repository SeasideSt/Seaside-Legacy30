processing
handleRequest
	| renderContinuation |
	[ self withNotificationHandlerDo: [ 
		self renderingContext callbacks handle: self requestContext ] ]
			ensure: ["this code is not yet tested because the javascript code isn't working with the response refactoring  yet. but I think it will work. we might want to copy states before snapshotting it -- jf'" 
				self request isXmlHttpRequest ifTrue: [ self states snapshot ] ].
	renderContinuation := self createRenderContinuation.
	(self shouldRedirect) 
		ifTrue: [ self redirectToContinuation: renderContinuation ]
		ifFalse: [ renderContinuation value ]