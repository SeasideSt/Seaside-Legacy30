api
valueWithExpiry
	^ expiry
		ifNil: [self value]
		ifNotNil: [(self value ifNil: ['']), '; expires=', self expiryString]