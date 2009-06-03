testing
testCopyEntryPoint
	| parent config copy |
	parent := WADispatcher new.
	handler setParent: parent.
	config := handler configuration.
	
	copy := handler copy.
	
	self assert: handler parent == parent.
	self assert: handler configuration == config.
	self assert: copy name = handler name.
	self assert: copy isEntryPoint.
	self assert: copy parent isNil.
	self deny: copy configuration == handler configuration.
	self deny: copy configuration isNil.