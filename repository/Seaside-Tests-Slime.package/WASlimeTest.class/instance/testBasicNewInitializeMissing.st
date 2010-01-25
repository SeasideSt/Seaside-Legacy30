testing-block
testBasicNewInitializeMissing
	| class |
	class := self
		defineClass: #WASlimeMockObject
		superclass: #Object.
	self compile:  'initialize' in: class.
	self
		runRule: WABasicNewInitializeMissingRule
		selectors: #(initialize)