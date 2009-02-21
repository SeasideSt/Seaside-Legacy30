processing
processRendering: aResponse 
	| document htmlRoot renderContext actionContinuation |
	"Prepare the response"
	aResponse contentType: self application contentType.

	"Create objects we need"
	document := self requestContext newDocument.
	actionContinuation := self createActionContinuation.
	renderContext := self createRenderContext.
	
	"Hook objects together"
	renderContext
		document: document;
		actionUrl: actionContinuation registerForUrl;
		resourceUrl: self application resourceBaseUrl.
	actionContinuation renderContext: renderContext.
	htmlRoot := self createHtmlRootWithContext: renderContext.

	"Render"
	document open: htmlRoot.
	self presenter renderWithContext: renderContext.
	document close.
	renderContext destroy