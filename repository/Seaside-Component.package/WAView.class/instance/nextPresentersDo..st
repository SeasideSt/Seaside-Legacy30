iterating
nextPresentersDo: aBlock
	self childrenDo: [:ea | aBlock value: ea outermost ]