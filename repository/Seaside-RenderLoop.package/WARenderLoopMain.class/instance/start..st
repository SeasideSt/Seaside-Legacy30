processing
start: aRequest
	| root |
	root := self createRoot.
	root visiblePresentersDo: [ :each | each initialRequest: aRequest ].
	((self session preferenceAt: #renderPhaseContinuationClass) root: root) value: aRequest