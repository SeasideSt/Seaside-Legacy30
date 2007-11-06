instance-creation
method: methodString url: urlString headers: headDict fields: fieldDict cookies: cookieDict nativeRequest: anObject
	^ (self method: methodString url: urlString headers: headDict fields: fieldDict cookies: cookieDict)
		nativeRequest: anObject;
		yourself