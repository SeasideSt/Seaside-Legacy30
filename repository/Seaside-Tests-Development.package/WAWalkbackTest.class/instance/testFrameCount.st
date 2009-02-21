testing
testFrameCount
	| walkback |
	[WATestError signal: 'foo']
		on: WATestError
		do: [ :e | walkback := WAWalkback exception: e ].

	self assert: walkback frameCount > 0