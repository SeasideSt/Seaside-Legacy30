instance-creation
method: methodString url: urlString headers: headerDictionary fields: fieldDictionary cookies: cookieCollection remoteAddress: addressString
	^ self new
		setMethod: methodString
		url: urlString
		headers: headerDictionary
		fields: fieldDictionary
		cookies: cookieCollection
		remoteAddress: addressString