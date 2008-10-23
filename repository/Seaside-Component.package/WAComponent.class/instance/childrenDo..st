iterating
childrenDo: aBlock
	self children do: [:ea | ea ifNotNil: [aBlock value: ea]]