instance creation
method: methodString url: aUrlOrString headers: headerDictionary fields: fieldDictionary cookies: cookieCollection remoteAddress: addressString nativeRequest: anObject
	^ self basicNew
		initializeMethod: methodString
		url: aUrlOrString
		headers: headerDictionary
		fields: fieldDictionary
		cookies: cookieCollection
		remoteAddress: addressString
		nativeRequest: anObject