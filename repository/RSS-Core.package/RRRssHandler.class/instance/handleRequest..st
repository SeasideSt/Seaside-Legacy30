processing
handleRequest: aRequest
	| response document context canvas root rootComponent |
	response := WAResponse new contentType: RRRssRoot defaultContentType.
	document := WAHtmlStreamDocument new.
	root := RRRssRoot new.
	
	document stream: response stream.
	document open: root.
	context := WARenderingContext new document: document.
	canvas := RRRssRenderCanvas context: context callbacks: Dictionary new.
	
	rootComponent := self createRootComponent.
	
	WAContext
		pushRequestHandler: self
		while: [ [
			rootComponent initialRequest: aRequest.
			rootComponent updateRoot: aRequest.
			canvas render: rootComponent ]
				on: Error
				do: [ :err |
					self openDebugger
						ifTrue: [ SeasidePlatformSupport openDebuggerOn: err ]
						ifFalse: [ response := WAResponse internalError: err ] ] ].
	document close: root.
	^response