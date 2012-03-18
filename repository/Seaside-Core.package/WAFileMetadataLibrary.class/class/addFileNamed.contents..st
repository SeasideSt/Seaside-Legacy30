file addition
addFileNamed: filename contents: aByteArrayOrString
	| selector contentCodeString mimeType code |
	selector := self asSelector: filename.
	contentCodeString := (self isBinary: filename)
		ifTrue: [ self contentCodeBinaryFor: aByteArrayOrString ]
		ifFalse: [ self contentCodeTextFor: aByteArrayOrString ].
	mimeType := self mimetypeFor: (filename copyAfterLast: $.).
	
	code := String streamContents: [ :stream |
		stream
			nextPutAll: selector; nextPut: Character cr;
			nextPut: Character tab; nextPutAll: '^ WAFileLibraryResource'; nextPut: Character cr; 
			nextPut: Character tab; nextPut: Character tab; nextPutAll: 'filepath: '''; nextPutAll: filename; nextPutAll: ''''; nextPut: Character cr;
			nextPut: Character tab; nextPut: Character tab; nextPutAll: 'mimeType: (WAMimeType main: '''; nextPutAll: mimeType main; nextPutAll: ''' sub: '''; nextPutAll: mimeType sub; nextPutAll: ''')'; nextPut: Character cr;
			nextPut: Character tab; nextPut: Character tab; nextPutAll: 'cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)'; nextPut: Character cr;
			nextPut: Character tab; nextPut: Character tab;  nextPutAll: 'contents: [ '; nextPutAll: contentCodeString; nextPutAll: ' ]' ].
		
	GRPlatform current 
		compile: code
		into: self
		classified: self methodCategory
		
	