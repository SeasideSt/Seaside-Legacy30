convenience
visiblePresentersDo: aBlock
	WAVisiblePresenterGuide new
		client: (WAPluggablePresenterVisitor new
			block: aBlock;
			yourself);
		start: self