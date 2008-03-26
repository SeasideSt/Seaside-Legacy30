encoding
encodePathOn: aDocument
	aDocument nextPut: $/.
	path ifNil: [ ^ self ].
	path
		do: [ :each | aDocument urlEncoder nextPutAll: each ]
		separatedBy: [ aDocument nextPut: $/ ]