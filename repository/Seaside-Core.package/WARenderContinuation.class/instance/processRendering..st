private
processRendering: aResponse 
	| document htmlRoot |
	document := self newDocumentOn: aResponse.
	renderContext document: document.
	htmlRoot := self newHtmlRoot.
	document open: htmlRoot.
	self root decorationChainDo: [ :each | each renderWithContext: renderContext ].
	self writeOnLoadOn: document.
	document close: htmlRoot.
	renderContext release