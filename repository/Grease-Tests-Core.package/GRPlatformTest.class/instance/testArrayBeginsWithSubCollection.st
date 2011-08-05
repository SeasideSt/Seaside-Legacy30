tests
testArrayBeginsWithSubCollection
	self assert: (#(7 4 5 1) beginsWithSubCollection: #(7 4)).
	self deny: (#(4 2 2 3) beginsWithSubCollection: #(5))