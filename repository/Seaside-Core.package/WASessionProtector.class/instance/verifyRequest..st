testing
verifyRequest: aRequest
	^(self remoteAddressFromRequest: aRequest) = self storedRemoteAddress