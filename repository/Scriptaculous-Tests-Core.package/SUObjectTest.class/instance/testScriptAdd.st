testing-script
testScriptAdd
	| script |
	script := self script.
	script add: self mock.
	self assert: script equals: 'mock'.
	script add: self element.
	self assert: script equals: 'mock;$(this)'