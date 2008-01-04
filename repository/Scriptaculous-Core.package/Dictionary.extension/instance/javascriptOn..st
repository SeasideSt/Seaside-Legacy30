*scriptaculous-core
javascriptOn: aStream
	aStream nextPut: ${.
	self associations
		do: [ :each | aStream javascript: each key; nextPut: $:; javascript: each value ]
		separatedBy: [ aStream nextPut: $, ].
	aStream nextPut: $}