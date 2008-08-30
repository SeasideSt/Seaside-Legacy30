testing-decoration
testDecorationEvery
	self
		assert: (self mock every: 123)
		equals: 'new PeriodicalExecuter(function(){mock},123)'