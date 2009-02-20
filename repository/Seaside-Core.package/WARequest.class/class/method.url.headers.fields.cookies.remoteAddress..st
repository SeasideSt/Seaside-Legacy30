instance creation
method: methodString url: aUrlOrString headers: headerDictionary fields: fieldDictionary cookies: cookieCollection remoteAddress: addressString
	^ self
		method: methodString
		url: aUrlOrString
		headers: headerDictionary
		fields: fieldDictionary
		cookies: cookieCollection
		remoteAddress: addressString
		nativeRequest: nil