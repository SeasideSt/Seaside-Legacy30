processing
start
	| root |
	root := self createRoot.
	self prepareRoot: root.
	self session presenter: root.
	((self session preferenceAt: #renderPhaseContinuationClass) new) captureAndInvoke