instance creation
method: methodString url: aUrlOrString headers: headerDictionary fields: fieldDictionary cookies: cookieCollection remoteAddress: addressString scheme: schemeString
	^ self basicNew
		initializeMethod: methodString
		url: aUrlOrString
		headers: headerDictionary
		fields: fieldDictionary
		cookies: cookieCollection
		remoteAddress: addressString
		scheme: schemeString