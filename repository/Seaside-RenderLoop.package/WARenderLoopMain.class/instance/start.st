processing
start
	| root |
	root := self createRoot.
	root visiblePresentersDo: [ :each | each initialRequest: self requestContext request ].
	((self session preferenceAt: #renderPhaseContinuationClass) root: root) value