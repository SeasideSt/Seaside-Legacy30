accessing
timeoutSeconds
	^ timeout ifNil: [ timeout := self defaultTimeoutSeconds ]