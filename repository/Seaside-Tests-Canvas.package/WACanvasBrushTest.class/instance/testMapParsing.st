testing-tags-anchors
testMapParsing
	self assert: (WAImageMapCallback new valueForField: '?1,2') = (1 @ 2).
	self assert: (WAImageMapCallback new valueForField: '?1,23') = (1 @ 23).
	self assert: (WAImageMapCallback new valueForField: '?12,34') = (12 @ 34).

	self assert: (WAImageMapCallback new valueForField: '1,2') isNil.
	self assert: (WAImageMapCallback new valueForField: '?1x2') isNil