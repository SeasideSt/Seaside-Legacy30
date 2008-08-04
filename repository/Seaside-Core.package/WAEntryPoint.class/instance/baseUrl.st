public
baseUrl
	| serverPath url |
	serverPath := self serverPath.
	
	url := (serverPath isNil and: [ parent notNil ])
			ifTrue: [ parent baseUrl ]
			ifFalse: [ WAUrl new ].
	serverPath isNil
		ifFalse: [ url addToPath: serverPath ]
		ifTrue: [ url addToPath: self name ].
		
	^ url
		scheme: self serverProtocol;
		hostname: self serverHostname;
		port: self serverPort;
		yourself