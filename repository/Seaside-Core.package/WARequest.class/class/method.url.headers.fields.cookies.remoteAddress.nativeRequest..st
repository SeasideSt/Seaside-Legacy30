instance creation
method: methodString url: aUrlOrString headers: headerDictionary fields: fieldDictionary cookies: cookieCollection remoteAddress: addressString nativeRequest: anObject
	^ (self method: methodString url: aUrlOrString headers: headerDictionary fields: fieldDictionary cookies: cookieCollection remoteAddress: addressString)
		nativeRequest: anObject;
		yourself