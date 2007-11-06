testing
testPickANumberAboveFive
	|x|
	x := self pickANumber.
	amb assert: (x > 5).
	self assert: x = 6