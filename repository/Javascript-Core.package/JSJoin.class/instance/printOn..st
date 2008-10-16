printing
printOn: aStream
	self collection isEmpty
		ifTrue: [ ^ self printEmptyOn: aStream ].
	self collection size = 1
		ifTrue: [ ^ self printElement: self collection first on: aStream ].
	aStream nextPut: $[.
	self collection 
		do: [ :each | self printElement: each on: aStream ]
		separatedBy: [ aStream nextPut: $, ].
	aStream nextPutAll: '].join("&")'