actions
configure: aHandler
	self selection: aHandler.
	self editor home.
	(self editor activeComponent isKindOf: WADispatcherEmptyPage)
		ifFalse: [ self setEmptyPage ].
	self show: aHandler configurationComponent