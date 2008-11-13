testing-literals
testNull
	self assert: (self parse: 'null') isNil.
	self assert: (self parse: 'NULL') == #NULL  "Must use == to ensure parse result is a Symbol"