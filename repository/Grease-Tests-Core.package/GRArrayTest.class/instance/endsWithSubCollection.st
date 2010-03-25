testing
endsWithSubCollection
	self assert: (#(1 2 3 4 5) endsWithSubCollection: #(2 3 4 5)).
	self assert: (#(1 2 3 4 5) endsWithSubCollection: #(1 2 3 4 5)).
	self deny: (#(1 2 3 4 5) endsWithSubCollection: #(1 2 3 4 5 1)).