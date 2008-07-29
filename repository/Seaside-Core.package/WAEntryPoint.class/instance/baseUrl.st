public
baseUrl
	| serverPath url |
	url := WAUrl new.
	
	serverPath := self serverPath.
	serverPath isNil
		ifTrue: [ url addToPath: self basePath ]
		ifFalse: [ url addToPath: serverPath ].
		
	^ url
		scheme: self serverProtocol;
		hostname: self serverHostname;
		port: self serverPort;
		yourself