accessing
sessionCookie
	"creates a new session cookie"
	^ self newCookie
		key: self application handlerCookieName;
		value: (self application ensureKeyForHandler: self) toString;
		discard: true;
		comment: 'the Seaside Session Cookie';
		commentUrl: 'http://www.seaside.st/documentation/sessionCookie';
		yourself