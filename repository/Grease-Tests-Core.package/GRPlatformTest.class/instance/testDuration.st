testing
testDuration
	| duration |
	duration := Duration days: 0 hours: 0 minutes: 1 seconds: 1.
	self assert: duration asSeconds = 61