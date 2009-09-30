testing
testDigitValue
	($0 to: $9), ($A to: $Z) with: (0 to: 35) do: [ :each :expected |
		self assert: each digitValue = expected ]