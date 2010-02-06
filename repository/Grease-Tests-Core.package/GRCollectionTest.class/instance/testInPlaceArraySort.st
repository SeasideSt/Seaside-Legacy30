tests
testInPlaceArraySort
	| array |
	array := Array withAll: #(2 4 3 1).
	array sort.
	self assert: array = #(1 2 3 4).
	array sort: [:a :b | a > b].
	self assert: array = #(4 3 2 1)