accessing
storedRemoteAddress
	remoteAddress isNil
		ifTrue: [ remoteAddress := self remoteAddressFromRequest: self session currentRequest ].
	^remoteAddress