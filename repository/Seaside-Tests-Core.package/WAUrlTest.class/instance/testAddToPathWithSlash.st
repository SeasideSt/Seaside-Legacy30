testing-adding
testAddToPathWithSlash
	url addToPath: '/files/WAStandardFiles/'.
	self assert: url path size = 2.
	self assert: url path first = 'files'.
	self assert: url path second = 'WAStandardFiles'.
	self assert: url seasideString = '/files/WAStandardFiles/'