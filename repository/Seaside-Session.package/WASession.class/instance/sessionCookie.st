private
sessionCookie
	"creates a new session cookie"
	^ self requestContext newCookie
		key: self application handlerCookieName;
		value: self key seasideString;
		discard: true;
		comment: 'the Seaside Session Cookie';
		commentUrl: 'http://www.seaside.st/documentation/sessionCookie';
		yourself