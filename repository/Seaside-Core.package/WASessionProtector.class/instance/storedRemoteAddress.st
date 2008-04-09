accessing
storedRemoteAddress
	^ remoteAddress ifNil: [ remoteAddress := self remoteAddressFromRequest: self requestContext request ]