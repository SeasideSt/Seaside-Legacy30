testing-block
testUsesNotPortableClass
	| class |
	class := self
		defineClass: #WASlimeMockObject
		superclass: #WAObject.
	self compile: 'invalid ^ Semaphore new' in: class.
	self compile: 'valid ^ WAObject new' in: class.
	self 
		runRule: WAUsesNotPortableClassRule
		selectors: #(invalid)