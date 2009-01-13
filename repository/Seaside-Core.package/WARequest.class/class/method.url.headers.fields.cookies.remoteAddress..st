instance creation
method: methodString url: aUrlOrString headers: headerDictionary fields: fieldDictionary cookies: cookieCollection remoteAddress: addressString
	^ self new
		setMethod: methodString
		url: aUrlOrString
		headers: headerDictionary
		fields: fieldDictionary
		cookies: cookieCollection
		remoteAddress: addressString