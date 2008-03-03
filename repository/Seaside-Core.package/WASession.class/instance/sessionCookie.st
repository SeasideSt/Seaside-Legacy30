accessing
sessionCookie
	^ WACookie new
		key: self application handlerCookieName;
		value: (self application ensureKeyForHandler: self) toString;
		discard: true;
		yourself