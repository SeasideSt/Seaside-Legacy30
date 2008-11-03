private
newContext
	| renderingContext actionContinuation guide |
	renderingContext := WARenderingContext new.
	guide := WARenderingGuide client: (WARenderVisitor context: renderingContext).
	renderingContext visitor: guide.
	actionContinuation := self newActionPhaseContinuation.
	actionContinuation
		renderingContext: renderingContext;
		setStates: self newStates.
	renderingContext actionUrl: actionContinuation url.
	
	^ renderingContext