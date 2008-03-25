instance-creation
method: methodString url: urlString headers: headDict fields: fieldDict cookies: cookieCollection nativeRequest: anObject
	^ (self method: methodString url: urlString headers: headDict fields: fieldDict cookies: cookieCollection)
		nativeRequest: anObject;
		yourself