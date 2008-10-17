as yet unclassified
newContext
	| renderingContext actionContinuation |
	renderingContext := WARenderingContext new.
	actionContinuation := self newActionPhaseContinuation.
	actionContinuation
		renderingContext: renderingContext;
		setStates: self newStates.
	renderingContext actionUrl: actionContinuation url.
	
	^ renderingContext