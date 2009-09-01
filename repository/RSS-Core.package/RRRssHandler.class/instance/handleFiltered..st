handling
handleFiltered: aRequestContext
	| document context canvas root rootComponent |
	self setContentType: aRequestContext response.
	document := aRequestContext newDocument.
	root := self createDocumentRoot.
	document open: root.
	context := WARenderContext new document: document.
	[ canvas := RRRssRenderCanvas context: context.
	rootComponent := self createRootComponent.
	
	rootComponent updateRoot: root.
	canvas render: rootComponent.
		
	document close ] ensure: [ context destroy ].
	aRequestContext respond