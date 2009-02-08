processing
start
	| root |
	root := self createRoot.
	self prepareRoot: root.
	((self session preferenceAt: #renderPhaseContinuationClass) root: root) captureAndInvoke