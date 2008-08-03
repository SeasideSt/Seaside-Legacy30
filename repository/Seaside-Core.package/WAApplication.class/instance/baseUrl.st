accessing
baseUrl
	| serverPath |
	serverPath := self serverPath.
	^ (serverPath isNil
		ifTrue: [ super baseUrl ]
		ifFalse: [ WAUrl new addToPath: serverPath ])
			scheme: self serverProtocol;
			hostname: self serverHostname;
			port: self serverPort;
			yourself