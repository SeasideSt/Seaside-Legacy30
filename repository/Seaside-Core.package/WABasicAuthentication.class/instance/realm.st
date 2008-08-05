accessing
realm
	^ realm ifNil: [self session application basePath]