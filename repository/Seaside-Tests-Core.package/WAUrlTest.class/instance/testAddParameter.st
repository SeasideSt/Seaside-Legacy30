testing-adding
testAddParameter
	url addParameter: 'x'.
	self assert: url seasideString = '/?x'.
	url addParameter: 'y'.
	self assert: url seasideString = '/?x&y'.
	url addParameter: 'x'.
	self assert: url seasideString = '/?x&y&x'