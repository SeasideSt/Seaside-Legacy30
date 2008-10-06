testing
testAlternateFiles
	| app originalApp |
	app := alternateDispatcher entryPointAt: 'files'.
	originalApp := defaultDispatcher entryPointAt: 'files'.
	self assert: app class == WAFileHandler.
	self deny: app isApplication.
	self deny: app isDispatcher.
	self deny: app parent isNil.
	self assert: app name = 'files'.
	self assert: app basePath = ('/' , alternateDispatcher name , '/files').

	self deny: app == originalApp.
	self deny: app libraries == originalApp libraries.
	self assert: app name = originalApp name.
	self assert: app parent == alternateDispatcher.
	self assert: originalApp parent == defaultDispatcher