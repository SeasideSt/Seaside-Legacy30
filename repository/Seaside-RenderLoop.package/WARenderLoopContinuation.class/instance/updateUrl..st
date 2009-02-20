updating
updateUrl: anUrl
	super updateUrl: anUrl.
	(WAVisiblePresenterGuide client: (WAUpdateUrlVisitor url: anUrl))
		start: self presenter