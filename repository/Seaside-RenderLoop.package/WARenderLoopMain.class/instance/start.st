processing
start
	| root |
	root := self createRoot.
	WAAllPresenterGuide new
		client: (WAInitialRequestVisitor new
			request: (self requestContext request);
			yourself);
		start: root.
	((self session preferenceAt: #renderPhaseContinuationClass) root: root) value