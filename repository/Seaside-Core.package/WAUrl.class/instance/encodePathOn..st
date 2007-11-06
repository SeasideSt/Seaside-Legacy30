encoding
encodePathOn: aDocument
	path ifNil: [ ^ self ].
	aDocument nextPut: $/.
	path
		do: [ :each | aDocument urlEncoder nextPutAll: each ]
		separatedBy: [ aDocument nextPut: $/ ]