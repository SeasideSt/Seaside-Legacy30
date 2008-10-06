testing
testAlternateCounterDirect
	| app originalApp |
	app := alternateDispatcher entryPointAt: 'examples/counter'.
	originalApp := defaultDispatcher entryPointAt: 'examples/counter'.
	self assert: app name = 'counter'.
	self assert: app parent name = 'examples'.
	self assert: app basePath = ('/' , alternateDispatcher name , '/examples/counter').

	self deny: app == originalApp.
	self assert: app name = originalApp name.
	self deny: app parent == originalApp parent.
	self assert: app parent name = originalApp parent name.

	self deny: app parent parent == originalApp parent parent.
	self deny: app parent parent name = originalApp parent parent name.
	self assert: app parent parent == alternateDispatcher.
	self assert: originalApp parent parent == defaultDispatcher