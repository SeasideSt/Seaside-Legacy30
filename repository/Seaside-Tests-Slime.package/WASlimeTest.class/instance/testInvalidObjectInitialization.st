testing-block
testInvalidObjectInitialization
	| class |
	class := self
		defineClass: #WASlimeMockObject
		superclass: #WAObject.
	self compile:  'initializeFoo: aNumber' in: class.
	self 
		runRule: WAInvalidObjectInitializationRule
		selectors: #(initializeFoo:)