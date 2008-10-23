iterating
visiblePresentersDo: aBlock
	self decorationChainDo: [:ea | ea withNextPresentersDo: aBlock]