testing
testDecorations
	self assert: root decorations isEmpty.
	root show: child1.
	self assert: root decorations size = 1.
	root addMessage: 'hello'.
	self assert: root decorations size = 2
