testing-script
testScriptConcatenate
	| script |
	script := SUElement new.
	self assert: script equals: '$(this)'.

	script := script , (self stream nextPutAll: 'foo').
	self assert: script equals: '$(this);foo'.

	script := script , (self stream nextPutAll: 'bar').
	self assert: script equals: '$(this);foo;bar'.

	script := script , (self script , (self stream nextPutAll: 'zork')).
	self assert: script equals: '$(this);foo;bar;zork'