tree
withNextPresentersDo: aBlock
	aBlock value: self.
	self nextPresentersDo: [:ea | ea withNextPresentersDo: aBlock]