processing
processRendering: aResponse 
	"I do not understand the refactoring made here, everything is agains me. So I just inlined newContext to make it simpler. Has to be refactored again."
	
	| document htmlRoot renderingContext actionContinuation |
	renderingContext := WARenderingContext new.
	renderingContext visitor: (WARenderingGuide client: renderingContext visitor).
	actionContinuation := self newActionPhaseContinuation
		setStates: self newStates;
		renderingContext: renderingContext;
		yourself.
	renderingContext actionUrl: actionContinuation registerForUrl.
	document := self application newDocumentOn: aResponse stream.
	renderingContext document: document.
	htmlRoot := self newHtmlRootWithContext: renderingContext.
	document open: htmlRoot.
	[ self root renderWithContext: renderingContext ]
		ensure: [ self updateStates: actionContinuation states ].
	self writeOnLoadOn: document.
	document close: htmlRoot.
	renderingContext release