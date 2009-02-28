testing-transform
testAnsiBooleansRule
	self 
		run: WAAnsiBooleansRule new
		changes: #( 
			'and 1 and: [ 2 and: [ 3 and: [ 4 ] ] ]'
			'or 1 or: [ 2 or: [ 3 or: [ 4 ] ] ]' )