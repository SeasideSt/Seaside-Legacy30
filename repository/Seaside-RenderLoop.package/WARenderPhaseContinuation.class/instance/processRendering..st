processing
processRendering: aResponse 
	"I do not understand the refactoring made here, everything is agains me. So I just inlined newContext to make it simpler. Has to be refactored again."
	
	| document htmlRoot renderingContext renderingContext1 actionContinuation snapshot |
	renderingContext1 := WARenderingContext new.
	renderingContext1 visitor: (WARenderingGuide client: renderingContext1 visitor).
	actionContinuation := self newActionPhaseContinuation
		setStates: (snapshot := self newStates);
		renderingContext: renderingContext1;
		yourself.
	renderingContext1 actionUrl: actionContinuation registerForUrl.
	renderingContext := renderingContext1.
	document := self application newDocumentOn: aResponse stream.
	renderingContext document: document.
	htmlRoot := self newHtmlRootWithContext: renderingContext.
	document open: htmlRoot.
	[ self root renderWithContext: renderingContext ]
		ensure: [ self updateStates: snapshot ].
	self writeOnLoadOn: document.
	document close: htmlRoot.
	renderingContext release