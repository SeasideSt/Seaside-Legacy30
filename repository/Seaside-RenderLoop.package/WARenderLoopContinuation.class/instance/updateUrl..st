updating
updateUrl: anUrl
	super updateUrl: anUrl.
	WAUpdateUrlVisitor new
		url: anUrl;
		start: self root