testing-parsetree
testUsesCurlyBraceArrays
	| class |
	(self canParse: 'foo { self foo. self bar }')
		ifFalse: [ ^ self ].
	class := self
		defineClass: #WASlimeMockObject
		superclass: #WAObject.
	class
		compile: 'invalid
			^ { self foo. self bar }'
		classified: #(accessing).
	class
		compile: 'valid
			^ Array new'
		classified: #(accessing).
	self 
		runRule: WAUsesCurlyBraceArraysRule
		selectors: #(invalid)