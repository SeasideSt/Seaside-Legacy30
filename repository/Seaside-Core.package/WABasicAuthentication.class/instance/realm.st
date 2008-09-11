accessing
realm
	^ realm ifNil: [self application baseUrl pathString]