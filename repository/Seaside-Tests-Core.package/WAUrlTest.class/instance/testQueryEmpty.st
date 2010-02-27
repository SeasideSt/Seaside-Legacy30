testing-encoding
testQueryEmpty
	self assert: url queryFields isEmpty.
	self assert: url printString = '/'