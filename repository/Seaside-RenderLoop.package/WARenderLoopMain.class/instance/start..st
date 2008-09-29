processing
start: aRequest
	| root |
	root := self createRoot.
	root visiblePresentersDo: [ :each | each initialRequest: aRequest ].
	(WARenderPhaseContinuation root: root) value: aRequest