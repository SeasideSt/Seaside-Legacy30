private
newContext
	| renderingContext actionContinuation |
	renderingContext := WARenderingContext new.
	renderingContext visitor: (WARenderingGuide client: renderingContext visitor).
	actionContinuation := self newActionPhaseContinuation.
	actionContinuation
		renderingContext: renderingContext;
		setStates: self newStates.
	renderingContext actionUrl: actionContinuation url.
	
	^ renderingContext