testing
testIsFiltered
	self deny: handler isFiltered.
	handler addFilter: WARequestFilter new.
	self assert: handler isFiltered