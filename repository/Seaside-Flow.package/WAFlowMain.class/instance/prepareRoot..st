processing
prepareRoot: aComponent
	super prepareRoot: aComponent.
	(WAVisiblePresenterGuide client: (WATaskVisitor new)) start: aComponent