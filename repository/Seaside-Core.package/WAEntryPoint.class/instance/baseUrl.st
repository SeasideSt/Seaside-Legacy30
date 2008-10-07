public
baseUrl
	| serverPath url |
	serverPath := self serverPath.

	url := (serverPath isNil and: [ self parent notNil ])
			ifTrue: [ self parent baseUrl ]
			ifFalse: [ WAUrl new ].
	serverPath isNil
		ifFalse: [ url addToPath: serverPath ]
		ifTrue: [ url addToPath: self name ].
		
	self serverProtocol isNil ifFalse: [ url scheme: self serverProtocol ].
	self serverHostname isNil ifFalse: [ url hostname: self serverHostname ].
	self serverPort isNil ifFalse: [ url port: self serverPort ].

	^ url