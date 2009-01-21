processing
handleFiltered: aRequestContext
	| document context canvas root rootComponent |
	document := self newDocumentOn:
		(aRequestContext response
			contentType: RRRssRoot defaultContentType;
			stream).
	root := RRRssRoot new.
	document open: root.
	context := WARenderingContext new document: document.
	canvas := RRRssRenderCanvas context: context.
	rootComponent := self createRootComponent.
	
	WACurrentRequestContext use: aRequestContext during: [
		self exceptionHandler
			handleExceptionsDuring: [
				rootComponent updateRoot: root.
				canvas render: rootComponent.
				document close: root.
				aRequestContext respond ]
			context: aRequestContext ]