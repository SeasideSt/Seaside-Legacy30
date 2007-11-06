testing
testMaybe
	|x y z|
	x := amb maybe.
	y := amb maybe.
	z := amb maybe not.

	amb deny: x = y.
	amb deny: x = z.

	self assert: x.
	self deny: y.
	self deny: z