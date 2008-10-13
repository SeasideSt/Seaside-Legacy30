*javascript-core
arguments: aCollection
	self nextPut: $(.
	aCollection
		do: [ :each | self javascript: each ]
		separatedBy: [ self nextPut: $, ].
	self nextPut: $)