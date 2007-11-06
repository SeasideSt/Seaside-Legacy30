accessing-cookies
cookieAt: key put: value
	^ self addCookie: (WACookie key: key value: value)