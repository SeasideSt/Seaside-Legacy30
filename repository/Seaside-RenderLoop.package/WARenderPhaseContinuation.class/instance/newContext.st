as yet unclassified
newContext
	| renderingContext actionContinuation |
	renderingContext := WARenderingContext new.
	actionContinuation := (WAActionPhaseContinuation root: self root) renderingContext: renderingContext.
	actionContinuation setStates: self newStates.
	renderingContext actionUrl: actionContinuation url.
	
	^ renderingContext