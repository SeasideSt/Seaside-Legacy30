public
definition
	^ OBTextDefinition text: (String streamContents: [ :stream |
		stream 
			nextPutAll: 'Type: '; nextPutAll: adaptor class name; nextPut: Character cr;
			nextPutAll: 'Encoding: '; nextPutAll: adaptor codec name; nextPut: Character cr;
			nextPutAll: adaptor statusString ])