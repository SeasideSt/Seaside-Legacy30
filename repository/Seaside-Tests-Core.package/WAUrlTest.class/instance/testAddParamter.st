testing-adding
testAddParamter
	url addToPath: 'files'.
	self assert: url seasideString = '/files'.
	url addParameter: 'x'.
	self assert: url seasideString = '/files?x'.
	url 
		addParameter: 'y'
		value: 1.
	self assert: url seasideString = '/files?x&y=1'