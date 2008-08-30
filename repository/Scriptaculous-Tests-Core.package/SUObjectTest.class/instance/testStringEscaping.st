testing-convertion
testStringEscaping
	self assert: '''' equals: '"''"'.
	self assert: '"' equals: '"\""'.
	self assert: '\' equals: '"\\"'