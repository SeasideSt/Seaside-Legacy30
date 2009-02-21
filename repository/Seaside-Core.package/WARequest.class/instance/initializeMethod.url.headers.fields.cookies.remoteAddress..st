initialization
initializeMethod: methodString url: aUrlOrString headers: headerDictionary fields: fieldDictionary cookies: cookieCollection remoteAddress: addressString
	self initialize.
	method := methodString asUppercase.
	url := aUrlOrString seasideUrl.
	headers := headerDictionary.
	fields := fieldDictionary.
	cookies := cookieCollection.
	remoteAddress := addressString