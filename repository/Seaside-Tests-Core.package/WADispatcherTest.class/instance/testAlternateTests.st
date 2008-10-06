testing
testAlternateTests
	| app originalApp |
	app := alternateDispatcher entryPointAt: 'tests'.
	originalApp := defaultDispatcher entryPointAt: 'tests'.
	self assert: app class == WADispatcher.
	self deny: app isApplication.
	self assert: app isDispatcher.
	self deny: app isRoot.
	self deny: app parent isNil.
	self assert: app name = 'tests'.
	self assert: app basePath = ('/' , alternateDispatcher name , '/tests').

	self deny: app == originalApp.
	self assert: app name = originalApp name.
	self assert: app parent == alternateDispatcher.
	self assert: originalApp parent == defaultDispatcher