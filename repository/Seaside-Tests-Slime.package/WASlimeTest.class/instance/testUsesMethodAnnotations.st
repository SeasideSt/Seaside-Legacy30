testing-block
testUsesMethodAnnotations
	| class |
	(self canParse: 'foo <foo: 123>')
		ifFalse: [ ^ self ].
	class := self
		defineClass: #WASlimeMockObject
		superclass: #WAObject.
	self compile: 'invalid <foo: 123>' in: class.
	self compile: 'valid' in: class.
	self 
		runRule: WAUsesMethodAnnotationsRule
		selectors: #(invalid)