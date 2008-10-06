testing-tags-anchors
testMapParsing
	self assert: (WAImageMapTag new parseImageMap: '?1,2') = (1 @ 2).
	self assert: (WAImageMapTag new parseImageMap: '?1,23') = (1 @ 23).
	self assert: (WAImageMapTag new parseImageMap: '?12,34') = (12 @ 34).

	self assert: (WAImageMapTag new parseImageMap: '1,2') isNil.
	self assert: (WAImageMapTag new parseImageMap: '?1x2') isNil