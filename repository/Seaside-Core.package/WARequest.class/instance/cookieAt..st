accessing-cookies
cookieAt: aKey
	^ cookies ifNotNil: [ cookies at: aKey ifAbsent: [] ]