testing
testCopyDispatcher
	| copy originalEntryPoint |
	copy := handler copy.
	
	self deny: copy == handler.
	self assert: copy defaultName = handler defaultName.
	self assert: (self dispatcher: copy hasSameEntryPointsAs: handler).
	
	copy entryPoints
		do: [:entryPoint |
			originalEntryPoint := handler entryPointAt: entryPoint name.
			self assert: entryPoint class == originalEntryPoint class.
			self deny: entryPoint == originalEntryPoint.
			entryPoint isDispatcher
				ifTrue: [self
						assert: (self dispatcher: entryPoint hasSameEntryPointsAs: originalEntryPoint)]]