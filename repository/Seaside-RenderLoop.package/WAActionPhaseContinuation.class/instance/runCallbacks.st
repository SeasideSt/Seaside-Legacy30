processing
runCallbacks
	[ self withNotificationHandlerDo: [ 
		self renderContext callbacks handle: self requestContext ] ]
			ensure: [
				self request isXmlHttpRequest ifTrue: [ self captureState ] ]