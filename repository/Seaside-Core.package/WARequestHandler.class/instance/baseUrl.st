accessing
baseUrl
	| url |
	
	url := self basicBaseUrl.
	self serverPath isNil ifFalse: [ url parsePath: self serverPath ].
	self serverProtocol isNil ifFalse: [ url scheme: self serverProtocol ].
	self serverHostname isNil ifFalse: [ url hostname: self serverHostname ].
	self serverPort isNil ifFalse: [ url port: self serverPort ].

	^ url