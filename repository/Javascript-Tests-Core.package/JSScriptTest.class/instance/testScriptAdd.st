testing-script
testScriptAdd
	| script |
	script := self script.
	script add: (self stream nextPutAll: 'foo').
	self assert: script equals: 'foo'.
	script add: (self stream nextPutAll: 'bar').
	self assert: script equals: 'foo;bar'