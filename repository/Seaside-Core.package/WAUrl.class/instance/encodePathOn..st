encoding
encodePathOn: aDocument
	path isNil ifFalse: [
		path do: [ :each |
			aDocument nextPut: $/.
			aDocument urlEncoder nextPutAll: each ] ].
	(path isNil or: [ path isEmpty or: [ slash ] ])
		ifTrue: [ aDocument nextPut: $/ ]