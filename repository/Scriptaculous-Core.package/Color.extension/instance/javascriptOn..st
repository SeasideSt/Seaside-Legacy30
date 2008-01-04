*scriptaculous-core
javascriptOn: aStream
	aStream nextPut: $'; nextPut: $#.
	aStream nextPutAll: (((self red * 255) asInteger printStringBase: 16)
		padded: #left to: 2 with: $0).
	aStream nextPutAll: (((self green * 255) asInteger printStringBase: 16)
		padded: #left to: 2 with: $0).
	aStream nextPutAll: (((self blue * 255) asInteger printStringBase: 16)
		padded: #left to: 2 with: $0).
	aStream nextPut: $'