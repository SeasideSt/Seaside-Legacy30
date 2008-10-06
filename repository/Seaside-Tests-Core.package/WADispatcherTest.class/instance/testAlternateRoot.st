testing
testAlternateRoot
	| app |
	app := alternateDispatcher.
	self assert: app class == WADispatcher.
	self deny: app isApplication.
	self assert: app isDispatcher.
	self assert: app isRoot.
	self assert: app parent isNil.
	self assert: app name = alternateName