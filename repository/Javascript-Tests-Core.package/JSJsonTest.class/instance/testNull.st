testing-literals
testNull
	self assert: (self parse: 'null') isNil.
	self assert: (self parse: 'NULL') = 'NULL'