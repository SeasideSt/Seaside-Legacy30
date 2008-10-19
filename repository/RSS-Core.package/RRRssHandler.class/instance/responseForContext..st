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
	
	[ rootComponent initialRequest: aRequestContext request.
	"rootComponent updateRoot: aRequest."
	canvas render: rootComponent ] 
		on: Error
		do: [ :error | response := self errorHandler internalError: error ].
	document close: root.
	^ response