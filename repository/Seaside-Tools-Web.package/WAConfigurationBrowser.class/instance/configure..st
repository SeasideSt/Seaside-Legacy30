actions
configure: aHandler
	| configComponent |
	self selection: aHandler.
	self editor home.
	configComponent := aHandler configurationComponent.
	configComponent editor isNil ifFalse: [configComponent editor beComponent].
	self show: configComponent