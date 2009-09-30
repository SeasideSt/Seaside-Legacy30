testing-accessing
testAtAppend
	dictionary at: '1' append: 'foo'.
	dictionary at: '1' append: 'bar'.
	self assert: dictionary size = 2.
	self assert: dictionary keys = #('1' '1').
	self assert: dictionary values = #('foo' 'bar').
	self assert: (dictionary at: '1') = 'foo'