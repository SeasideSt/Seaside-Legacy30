processing
start: aRequest
	| root |
	root := self createRoot.
	root visiblePresentersDo: [ :each | each initialRequest: aRequest ].
	(self renderLoopClass new root: root) run