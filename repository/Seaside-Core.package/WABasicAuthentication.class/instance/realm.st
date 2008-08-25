accessing
realm
	^ realm ifNil: [self session application baseUrl pathString]