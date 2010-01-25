testing-transform
testAnsiConditionalsRule
	| class |
	class := self
		defineClass: #WASlimeMockObject
		superclass: #WAObject.
	self compile: 'ifNotNil 1 ifNotNil: [ | a | self or. self and ]' in: class.
	self compile: 'ifNotNilDo 1 ifNotNilDo: [ :a | ^ a ]' in: class.
	self 
		runTransformation: WAAnsiConditionalsRule
		changes: #( 
			'ifNotNil 1 ifNotNil: [ :arg | | a | self or. self and ]'
			'ifNotNilDo 1 ifNotNil: [ :a | ^ a ]' )