encoding
encodeServerOn: aDocument
	hostname ifNil: [ ^ self ].
	aDocument nextPutAll: scheme; nextPutAll: '://'.
	username notNil ifTrue: [
		aDocument urlEncoder nextPutAll: username.
		password notNil ifTrue: [
			aDocument nextPut: $:.
			aDocument urlEncoder nextPutAll: password ].
		aDocument nextPut: $@ ].
	aDocument urlEncoder nextPutAll: hostname.
	port notNil ifTrue: [
		((scheme = 'http' and: [ port = 80 ])
			or: [ scheme = 'https' and: [ port = 443 ] ])
			ifFalse: [ aDocument nextPut: $:; print: port ] ]