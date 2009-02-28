testing-transform
testAnsiConditionalsRule
	self 
		run: WAAnsiConditionalsRule new
		changes: #( 
			'ifNotNil 1 ifNotNil: [ :arg | | a | self or. self and ]'
			'ifNotNilDo 1 ifNotNil: [ :a | ^ a ]' )