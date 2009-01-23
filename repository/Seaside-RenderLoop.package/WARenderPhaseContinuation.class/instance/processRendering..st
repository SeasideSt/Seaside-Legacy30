processing
processRendering: aResponse 
	| document htmlRoot renderingContext actionContinuation |
	"Create objects we need"
	document := self createDocumentFor: aResponse.
	actionContinuation := self createActionContinuation.
	renderingContext := self createRenderingContext.
	
	"Hook objects together"
	renderingContext
		document: document;
		actionUrl: actionContinuation registerForUrl.
	actionContinuation renderingContext: renderingContext.
	htmlRoot := self createHtmlRootWithContext: renderingContext.

	"Render"
	document open: htmlRoot.
	self root renderWithContext: renderingContext.
	document close: htmlRoot.
	renderingContext release