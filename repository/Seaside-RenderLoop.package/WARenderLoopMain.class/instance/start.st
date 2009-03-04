processing
start
	| root |
	root := self createRoot.
	self prepareRoot: root.
	self session properties at: #presenter put: root.
	((self application preferenceAt: #renderPhaseContinuationClass) new) captureAndInvoke