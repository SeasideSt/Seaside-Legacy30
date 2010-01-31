private
performRendering: anObject
	| innerContext docRoot document renderer |
	self requestContext respond: [ :response |
		innerContext := canvas context copy.
		docRoot := WAHtmlRoot context: innerContext.
		self rootBlock value: docRoot.
		response doNotCache.
		document := self requestContext handler documentClass 
			on: response stream codec: self requestContext codec.
		canvas context document: document.
		document open: docRoot.
		renderer := canvas species context: canvas context.
		renderer render: anObject; flush.
		document close ]