accessing
currentSegment
	^ stack isEmpty
		ifTrue: [nil]
		ifFalse: [stack last value]