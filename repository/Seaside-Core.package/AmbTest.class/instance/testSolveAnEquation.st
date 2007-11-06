testing
testSolveAnEquation
	|x y|
	x := amb oneOf: (1 to: 10).
	y := amb oneOf: (1 to: 10).
	amb assert: (y * x) = 42.
	self assert: x = 6.
	self assert: y = 7