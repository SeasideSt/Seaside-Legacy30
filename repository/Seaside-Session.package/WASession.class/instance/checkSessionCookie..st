private-cookies
checkSessionCookie: aRequestContext
	((aRequestContext request fields includesKey: self checkCookiesField)
		and: [ aRequestContext request cookies isEmpty ])
			ifTrue: [ cookiesEnabled := false ].