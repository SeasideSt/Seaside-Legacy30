testing
testAllValuesAboveFive
	|x results|
	results := amb allValues:
				[x := amb oneOf: (1 to: 10).
				amb assert: (x > 5).
				x].
	self assert: results = #(6 7 8 9 10)