initialization
initializeWithMethod: methodString uri: aUrlOrString version: aVersion
	self initialize.
	method := methodString asUppercase.
	uri := aUrlOrString seasideUrl.
	version := aVersion.
	headers := WAHeaderFields new.
	fields := WAHeaderFields new.
	cookies := OrderedCollection new.
	remoteAddress := nil