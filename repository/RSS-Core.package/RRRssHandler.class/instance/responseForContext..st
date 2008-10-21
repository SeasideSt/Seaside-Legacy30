processing
responseForContext: aRequestContext
	| response document context canvas root rootComponent |
	response := WAResponse new contentType: RRRssRoot defaultContentType.
	document := self newDocumentOn: response stream.
	root := RRRssRoot new.
	document open: root.
	context := WARenderingContext new document: document.
	canvas := RRRssRenderCanvas context: context.
	rootComponent := self createRootComponent.
	
	^ self exceptionHandler
		handleExceptionsDuring: [
			rootComponent updateRoot: root.
			canvas render: rootComponent.
			document close: root.
			response ]
		context: aRequestContext