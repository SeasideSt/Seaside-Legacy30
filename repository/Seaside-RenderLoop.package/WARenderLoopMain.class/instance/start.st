processing
start
	| root |
	root := self createRoot.
	WAInitialRequestVisitor new
		request: self requestContext request;
		start: root.
	((self session preferenceAt: #renderPhaseContinuationClass) root: root) value