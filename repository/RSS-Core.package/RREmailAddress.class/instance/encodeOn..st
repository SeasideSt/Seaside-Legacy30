displaying
encodeOn: aDocument
	username isNil ifFalse: [
		aDocument
			nextPutAll: username;
			nextPutAll: ' <' ].
	aDocument nextPutAll: address.
	username isNil ifFalse: [
		aDocument nextPut: $> ]