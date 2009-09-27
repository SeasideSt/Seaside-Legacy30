actions
openHandler: aHandler
	| plugin |
	super openHandler: aHandler.
	aHandler isDispatcher ifFalse: [
		plugin := (WAConfigureDispatcherPlugin on: aHandler for: self).
		plugin isActive ifTrue: [ plugin execute ] ]