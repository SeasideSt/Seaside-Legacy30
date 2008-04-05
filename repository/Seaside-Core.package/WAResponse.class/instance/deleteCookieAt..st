accessing-cookies
deleteCookieAt: aKeyString
	"Delete the cookie in the browser"
	self deleteCookie: (WACookie key: aKeyString value: '')