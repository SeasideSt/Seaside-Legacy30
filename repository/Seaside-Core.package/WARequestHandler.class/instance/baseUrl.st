public
baseUrl
	| serverPath url |
	serverPath := self serverPath.

	url := WAUrl new.
	serverPath isNil
		ifFalse: [ url addToPath: serverPath ]
		ifTrue: [ url addAllToPath: self path ].
		
	self serverProtocol isNil ifFalse: [ url scheme: self serverProtocol ].
	self serverHostname isNil ifFalse: [ url hostname: self serverHostname ].
	self serverPort isNil ifFalse: [ url port: self serverPort ].

	^ url