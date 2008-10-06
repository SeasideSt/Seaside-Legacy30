testing
testDefaultRoot
	| app |
	app := defaultDispatcher.
	self assert: app == WADispatcher default.
	self assert: app class == WADispatcher.
	self assert: app isDispatcher.
	self assert: app isRoot.
	self deny: app isApplication.
	self assert: app parent isNil.
	self assert: app name = baseName.
	self assert: app basePath = ('/' , baseName)