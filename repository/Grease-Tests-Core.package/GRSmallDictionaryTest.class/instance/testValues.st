testing-enumerating
testValues
	dictionary at: '1' put: 'foo'; at: '2' put: 'bar'.
	self assert: dictionary values = #( 'foo' 'bar' )