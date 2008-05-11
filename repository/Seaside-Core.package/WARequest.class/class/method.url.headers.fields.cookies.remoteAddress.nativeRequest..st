instance-creation
method: methodString url: urlString headers: headerDictionary fields: fieldDictionary cookies: cookieCollection remoteAddress: addressString nativeRequest: anObject
	^ (self method: methodString url: urlString headers: headerDictionary fields: fieldDictionary cookies: cookieCollection remoteAddress: addressString)
		nativeRequest: anObject;
		yourself