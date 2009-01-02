testing
testInvalidConfig
	| app |
	app := self defaultDispatcher entryPointAt: 'examplesxyz/counter' ifAbsent: [nil].
	self assert: app isNil.
	app := self defaultDispatcher entryPointAt: 'examples/counterxyz' ifAbsent: [nil].
	self assert: app isNil.
	