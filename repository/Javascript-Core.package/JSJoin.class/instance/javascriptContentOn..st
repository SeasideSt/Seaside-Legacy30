printing
javascriptContentOn: aStream
	self collection isEmpty
		ifTrue: [ ^ self javascriptEmptyOn: aStream ].
	self collection size = 1
		ifTrue: [ ^ self javascriptElementOn: self collection first on: aStream ].
	aStream nextPut: $[.
	self collection 
		do: [ :each | self javascriptElementOn: each on: aStream ]
		separatedBy: [ aStream nextPut: $, ].
	aStream nextPutAll: '].join("&")'
