testing-transform
testAnsiCharacterRule
	| class |
	class := self
		defineClass: #WASlimeMockObject
		superclass: #WAObject.
	self compile: 'character Character value: 123' in: class.
	self compile: 'characterRange $a to: $c' in: class.
	self 
		runTransformation: WAAnsiCharactersRule
		changes: #('character Character codePoint: 123' 'characterRange ''abc''')