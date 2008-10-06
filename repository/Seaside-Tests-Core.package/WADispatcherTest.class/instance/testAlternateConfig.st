testing
testAlternateConfig
	| app originalApp |
	app := alternateDispatcher entryPointAt: 'tests/alltests'.
	originalApp := defaultDispatcher entryPointAt: 'tests/alltests'.
	self assert: app class == WAApplication.
	self assert: app isApplication.
	self deny: app isDispatcher.
	self deny: app parent isNil.
	self assert: app name = 'alltests'.
	self assert: app basePath = ('/' , alternateDispatcher name , '/tests/alltests').

	self deny: app == originalApp.
	self assert: app name = originalApp name.
	self assert: app parent parent == alternateDispatcher.
	self assert: originalApp parent parent == defaultDispatcher