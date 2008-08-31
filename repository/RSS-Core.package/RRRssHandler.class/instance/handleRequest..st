processing
handleRequest: aRequest 
	| response document context canvas root rootComponent |
	response := WAResponse new contentType: RRRssRoot defaultContentType.
	document := self newDocumentOn: response stream.
	root := RRRssRoot new.
	document open: root.
	context := WARenderingContext new document: document.
	canvas := RRRssRenderCanvas 
		context: context
		callbacks: Dictionary new.
	rootComponent := self createRootComponent.
	WARequestContext 
		pushRequestHandler: self
		while: [ 
			[ rootComponent initialRequest: aRequest.
			rootComponent updateRoot: aRequest.
			canvas render: rootComponent ] 
				on: Error
				do: [ :error |
					response := self errorHandler internalError: error ] ].
	document close: root.
	^ response