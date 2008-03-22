accessing
sessionCookie
	^ WACookie new
		key: self application handlerCookieName;
		value: (self application ensureKeyForHandler: self) toString;
		discard: true;
		httpOnly: true;
		comment: 'the Seaside session cookie';
		commentUrl: 'http://www.seaside.st/documentation/sessionCookie';
		yourself