testing
testShortTests
	| app |
	app := shortDispatcher entryPointAt: 'tests'.
	self assert: shortDispatcher basePath = ''.
	self assert: app basePath = ('/tests')