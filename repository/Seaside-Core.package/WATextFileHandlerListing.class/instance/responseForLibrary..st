responding
responseForLibrary: aLibrary
	| response |
	response := WAResponse new
		contentType: WAMimeType textPlain;
		yourself.
		
	aLibrary fileSelectors do: [ :each |
		response
			nextPutAll: (aLibrary asFilename: each);
			nextPut: Character cr; nextPut: Character lf ].
		
	^ response