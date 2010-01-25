testing-transform
testAnsiConvertorRule
	| class |
	class := self
		defineClass: #WASlimeMockObject
		superclass: #WAObject.
	self compile: 'convertInteger ''1'' asInteger' in: class.
	self compile: 'convertString 2 asString' in: class.
	self 
		runTransformation: WAAnsiConvertorRule
		changes: #( 
			'convertInteger ''1'' greaseInteger'
			'convertString 2 greaseString' )