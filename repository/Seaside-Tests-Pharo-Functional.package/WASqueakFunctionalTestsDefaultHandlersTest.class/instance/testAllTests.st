testing
testAllTests
	| app |
	app := self defaultDispatcher entryPointAt: 'tests/alltests'.
	self assert: app class == WAApplication.
	self assert: app isApplication.
	self deny: app isDispatcher.
	self deny: app parent isNil.
	self assert: app name = 'alltests'.
	self assert: app basePath = ('/' , self baseName , '/tests/alltests')