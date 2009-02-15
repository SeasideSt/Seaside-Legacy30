responding
responseForLibrary: aLibrary
	| response |
	response := context response.
	response contentType: WAMimeType textPlain.
		
	aLibrary fileSelectors do: [ :each |
		response stream
			nextPutAll: (aLibrary asFilename: each);
			crlf ].
		
	context respond