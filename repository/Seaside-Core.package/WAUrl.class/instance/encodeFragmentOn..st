encoding
encodeFragmentOn: aDocument
	fragment ifNil: [ ^ self ].
	aDocument nextPut: $#.
	aDocument urlEncoder nextPutAll: fragment