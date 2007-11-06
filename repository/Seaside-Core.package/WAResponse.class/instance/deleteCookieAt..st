accessing-cookies
deleteCookieAt: key
	"Delete the cookie in the browser"
	self addCookie: ((WACookie key: key value: '')
						expireIn: (Duration days: -10000);
						yourself)