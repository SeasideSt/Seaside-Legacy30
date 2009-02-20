initialization
initializeMethod: methodString url: aUrlOrString headers: headerDictionary fields: fieldDictionary cookies: cookieCollection remoteAddress: addressString nativeRequest: anObject
	self initialize.
	method := methodString asUppercase.
	url := aUrlOrString seasideUrl.
	headers := headerDictionary.
	fields := fieldDictionary.
	cookies := cookieCollection.
	remoteAddress := addressString.
	nativeRequest := anObject