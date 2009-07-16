encoding
encodeServerOn: aDocument
	hostname ifNil: [ ^ self ].
	aDocument nextPutAll: self scheme; nextPutAll: '://'.
	username notNil ifTrue: [
		aDocument urlEncoder nextPutAll: username.
		password notNil ifTrue: [
			aDocument nextPut: $:.
			aDocument urlEncoder nextPutAll: password ].
		aDocument nextPut: $@ ].
	aDocument urlEncoder nextPutAll: hostname.
	port notNil ifTrue: [
		((self scheme = 'http' and: [ port = 80 ])
			or: [ self scheme = 'https' and: [ port = 443 ] ])
			ifFalse: [ aDocument nextPut: $:; print: port ] ]