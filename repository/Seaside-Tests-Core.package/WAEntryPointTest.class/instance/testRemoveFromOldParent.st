testing
testRemoveFromOldParent
	| parent parent2 |
	parent := WADispatcher new.
	parent register: handler.
	self assert: handler parent == parent.
	self assert: (parent entryPoints includes: handler).
	
	parent2 := WADispatcher new.
	parent2 register: handler.
	self assert: handler parent == parent2.
	self assert: (parent2 entryPoints includes: handler).
	self deny: (parent entryPoints includes: handler).
	