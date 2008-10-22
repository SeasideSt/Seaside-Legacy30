processing
processRendering: aResponse 
	| document htmlRoot renderingContext |
	renderingContext := self newContext.
	document := self application newDocumentOn: aResponse stream.
	renderingContext document: document.
	htmlRoot := self newHtmlRootWithContext: renderingContext.
	document open: htmlRoot.
	self root outermost renderWithContext: renderingContext.
	self writeOnLoadOn: document.
	document close: htmlRoot.
	renderingContext release