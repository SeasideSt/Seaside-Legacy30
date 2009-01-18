processing
processRendering: aResponse 
	"I do not understand the refactoring made here, everything is agains me. So I just inlined newContext to make it simpler. Has to be refactored again. --lr"
	
	| document htmlRoot renderingContext actionContinuation |
	document := self application newDocumentOn: aResponse stream.
	(renderingContext := WARenderingContext new)
		visitor: (WARenderingGuide client: renderingContext visitor);
		document: document.
		
	actionContinuation := self createActionContinuation
		setStates: self states;
		renderingContext: renderingContext;
		yourself.
	renderingContext actionUrl: actionContinuation registerForUrl.

	htmlRoot := self newHtmlRootWithContext: renderingContext.
	document open: htmlRoot.
	self root renderWithContext: renderingContext.
	self writeOnLoadOn: document.
	document close: htmlRoot.
	renderingContext release