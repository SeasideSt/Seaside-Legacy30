testing-accessing
testAtIfPresent
	dictionary at: '1' put: 'foo'.
	self assert: (dictionary at: '1' ifPresent: [ :v | v , 'bar' ]) = 'foobar'.
	self assert: (dictionary at: '2' ifPresent: [ :v | v , 'bar' ]) isNil