updating
updateUrl: anUrl
	super updateUrl: anUrl.
	WAVisiblePresenterGuide new
		client: (WAUpdateUrlVisitor new url: anUrl; yourself);
		start: self root