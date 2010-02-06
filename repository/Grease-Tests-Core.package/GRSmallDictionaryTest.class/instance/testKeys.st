testing-enumerating
testKeys
	dictionary at: '1' put: 'foo'; at: '2' put: 'bar'.
	self assert: dictionary keys = #( '1' '2' )