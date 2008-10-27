private-cookies
checkSessionCookie: aRequestContext
	| cookie get |
	(aRequestContext request fields includesKey: self checkCookiesField)
		ifTrue: [
			cookie := aRequestContext application sessionCookieFor: aRequestContext request.
			get := aRequestContext request fields at: aRequestContext application handlerField.
			(cookie value = get)
				ifTrue: [ cookiesEnabled := true ] ]