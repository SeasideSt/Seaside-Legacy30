tests
testArrayEndsWithSubCollection
	self assert: (#(7 4 5 1) endsWithSubCollection: #(5 1)).
	self deny: (#(4 2 2 3) endsWithSubCollection: #(5))