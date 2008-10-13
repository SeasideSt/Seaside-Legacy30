testing-script
testScriptConcatenate
	| script |
	script := self stream nextPutAll: 'foo'.
	self assert: script equals: 'foo'.

	script := script , (self stream nextPutAll: 'bar').
	self assert: script equals: 'foo;bar'.

	script := script , (self stream nextPutAll: 'baz').
	self assert: script equals: 'foo;bar;baz'.

	script := script , (self script , (self stream nextPutAll: 'zork')).
	self assert: script equals: 'foo;bar;baz;zork'