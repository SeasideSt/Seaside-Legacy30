as yet unclassified
processRendering: aResponse 
	| document htmlRoot renderContext |
	renderContext := self newContext.
	document := self application newDocumentOn: aResponse stream.
	renderContext document: document.
	htmlRoot := self newHtmlRootWithContext: renderContext.
	document open: htmlRoot.
	self root decorationChainDo: [ :each | each renderWithContext: renderContext ].
	self writeOnLoadOn: document.
	document close: htmlRoot.
	renderContext release