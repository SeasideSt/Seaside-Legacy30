accessing
sessionCookie
	^ WACookie key: self application handlerCookieName value: (self application ensureKeyForHandler: self) toString