testing
testSeconds
	self assert: Time now seconds isInteger.
	self deny: Time now seconds isFraction