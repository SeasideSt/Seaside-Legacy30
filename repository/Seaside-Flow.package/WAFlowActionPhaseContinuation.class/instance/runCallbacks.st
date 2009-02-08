processing
runCallbacks
	super runCallbacks.
	(WAVisiblePresenterGuide client: (WATaskVisitor new)) start: root.