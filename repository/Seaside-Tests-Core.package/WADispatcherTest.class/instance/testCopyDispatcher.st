testing
testCopyDispatcher
	| copy originalHandler |
	copy := handler copy.
	
	self deny: copy == handler.
	self assert: copy defaultName = handler defaultName.
	self assert: (self dispatcher: copy hasSameHandlersAs: handler).
	
	copy handlers
		do: [:each |
			originalHandler := handler handlerAt: each name.
			self assert: each class == originalHandler class.
			self deny: each == originalHandler.
			each isDispatcher
				ifTrue: [self
						assert: (self dispatcher: each hasSameHandlersAs: originalHandler)]]