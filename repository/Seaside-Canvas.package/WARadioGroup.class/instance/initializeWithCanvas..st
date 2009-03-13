initialization
initializeWithCanvas: aRenderCanvas
	self initialize.
	canvas := aRenderCanvas.
	key := aRenderCanvas callbacks store: WADispatchCallback new