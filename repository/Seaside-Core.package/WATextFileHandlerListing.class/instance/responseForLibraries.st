responding
responseForLibraries
	| response |
	response := context response.
	response contentType: WAMimeType textPlain.
		
	handler libraries do: [ :each |
		response stream
			nextPutAll: each name;
			crlf ].
	
	context respond