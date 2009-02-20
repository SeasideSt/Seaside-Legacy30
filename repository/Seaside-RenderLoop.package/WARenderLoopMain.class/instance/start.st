processing
start
	| root |
	root := self createRoot.
	self prepareRoot: root.
	self session properties at: #presenter put: root.
	((self session preferenceAt: #renderPhaseContinuationClass) new) captureAndInvoke