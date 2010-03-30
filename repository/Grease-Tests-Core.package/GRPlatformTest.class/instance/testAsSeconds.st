tests
testAsSeconds
	| duration |
	duration := Duration days: 1 hours: 0 minutes: 0 seconds: 0.
	self assert: duration asSeconds = 86400