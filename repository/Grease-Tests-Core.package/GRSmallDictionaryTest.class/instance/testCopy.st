testing
testCopy
	| other |
	dictionary at: 1 put: 'foo'; at: 2 put: 'bar'.
	other := dictionary copy.
	dictionary at: 1 put: 'zork'; at: 3 put: 'zonk'.
	other at: 2 put: 'other'.
	
	self assert: dictionary size = 3.
	self assert: (dictionary at: 1) = 'zork'.
	self assert: (dictionary at: 2) = 'bar'.
	self assert: (dictionary at: 3) = 'zonk'.
	
	self assert: other size = 2.
	self assert: (other at: 1) = 'foo'.
	self assert: (other at: 2) = 'other'