initialization
initializeMethod: methodString url: aUrlOrString headers: headerDictionary fields: fieldDictionary cookies: cookieCollection remoteAddress: addressString scheme: schemeString 
	self initialize.
	method := methodString asUppercase.
	url := aUrlOrString seasideUrl.
	headers := headerDictionary.
	fields := fieldDictionary.
	cookies := cookieCollection.
	remoteAddress := addressString.
	scheme := schemeString