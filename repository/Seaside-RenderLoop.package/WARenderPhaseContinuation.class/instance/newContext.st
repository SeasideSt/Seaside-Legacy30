private
newContext
	| renderingContext actionContinuation |
	renderingContext := WATreeRenderContext new.
	actionContinuation := self newActionPhaseContinuation.
	actionContinuation
		renderingContext: renderingContext;
		setStates: self newStates.
	renderingContext actionUrl: actionContinuation url.
	
	^ renderingContext