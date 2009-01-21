processing
start
	| root |
	root := self createRoot.
	(WAAllPresenterGuide client:
		(WAInitialRequestVisitor request: self requestContext request))
		start: root.
	((self session preferenceAt: #renderPhaseContinuationClass) root: root)
		captureState;
		value