actions
setDefault
	selection isNil ifFalse: [ self defaultDispatcher defaultName: self selectionPath ]
								