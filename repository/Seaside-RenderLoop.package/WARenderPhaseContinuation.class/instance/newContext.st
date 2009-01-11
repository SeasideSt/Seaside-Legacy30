private
newContext
	| renderingContext actionContinuation |
	renderingContext := WARenderingContext new.
	renderingContext visitor: (WARenderingGuide client: renderingContext visitor).
	actionContinuation := self newActionPhaseContinuation
							setStates: self newStates;
							renderingContext: renderingContext;
							yourself.
	renderingContext actionUrl: actionContinuation registerForUrl.
	
	^ renderingContext