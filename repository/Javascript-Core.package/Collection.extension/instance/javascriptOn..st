*javascript-core
javascriptOn: aStream
	aStream nextPut: $[.
	self
		do: [ :each | aStream javascript: each ]
		separatedBy: [ aStream nextPut: $, ].
	aStream nextPut: $]