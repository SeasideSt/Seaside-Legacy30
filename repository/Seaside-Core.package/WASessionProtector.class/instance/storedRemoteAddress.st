accessing
storedRemoteAddress
	remoteAddress isNil
		ifTrue: [ remoteAddress := self remoteAddressFromRequest: self context request ].
	^remoteAddress