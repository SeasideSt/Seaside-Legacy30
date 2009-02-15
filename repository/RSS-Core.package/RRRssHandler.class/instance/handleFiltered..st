handling
handleFiltered: aRequestContext
	| document context canvas root rootComponent |
	aRequestContext response contentType: RRRssRoot defaultContentType.
	document := aRequestContext newDocument.
	root := RRRssRoot new.
	document open: root.
	context := WARenderContext new document: document.
	canvas := RRRssRenderCanvas context: context.
	rootComponent := self createRootComponent.
	
	WACurrentRequestContext use: aRequestContext during: [
		self exceptionHandler
			handleExceptionsDuring: [
				rootComponent updateRoot: root.
				canvas render: rootComponent ]
			context: aRequestContext ].
		
	document close.
	context release.
	aRequestContext respond