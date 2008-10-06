testing
testAlternateCloning
	| originalHandler |
	self deny: alternateDispatcher == defaultDispatcher.
	self
		assert: (self dispatcher: alternateDispatcher hasSameEntryPointsAs: defaultDispatcher).
	alternateDispatcher entryPoints
		do: [:handler |
			originalHandler := defaultDispatcher entryPointAt: handler name.
			self assert: handler class == originalHandler class.
			self deny: handler == originalHandler.
			handler isDispatcher
				ifTrue: [self
						assert: (self dispatcher: handler hasSameEntryPointsAs: originalHandler)]]