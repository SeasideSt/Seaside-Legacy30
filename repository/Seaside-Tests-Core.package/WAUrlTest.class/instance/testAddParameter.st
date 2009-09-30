testing-adding
testAddParameter
	url addParameter: 'x'.
	self assert: url greaseString = '/?x'.
	url addParameter: 'y'.
	self assert: url greaseString = '/?x&y'.
	url addParameter: 'x'.
	self assert: url greaseString = '/?x&y&x'