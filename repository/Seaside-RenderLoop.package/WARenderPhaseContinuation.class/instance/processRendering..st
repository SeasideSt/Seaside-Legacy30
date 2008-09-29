as yet unclassified
processRendering: aResponse 
	| document htmlRoot renderingContext |
	renderingContext := self newContext.
	document := self application newDocumentOn: aResponse stream.
	renderingContext document: document.
	htmlRoot := self newHtmlRootWithContext: renderingContext.
	document open: htmlRoot.
	self root decorationChainDo: [ :each | each renderWithContext: renderingContext ].
	self writeOnLoadOn: document.
	document close: htmlRoot.
	renderingContext release