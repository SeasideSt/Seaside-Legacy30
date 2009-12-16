actions
openHandler: aHandler
	aHandler isNil 
		ifFalse: [
			self selection: aHandler.
			aHandler isDispatcher
				ifTrue: [self dispatcher: aHandler ]
				ifFalse: [self dispatcher: aHandler parent ] ]