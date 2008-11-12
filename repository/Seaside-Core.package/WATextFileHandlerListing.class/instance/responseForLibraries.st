responding
responseForLibraries
	| response |
	response := WAResponse new
		contentType: WAMimeType textPlain;
		yourself.
		
	handler libraries do: [ :each |
		response
			nextPutAll: each name;
			nextPut: Character cr; nextPut: Character lf ].
	
	^ response