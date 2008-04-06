accessing-cookies
deleteCookie: aCookie
	"Delete the cookie in the browser.
	
	The spec sez:
	If a CGI script wishes to delete a cookie, it can do so by returning a cookie with the same name, and an expires time which is in the past. The path and name must match exactly in order for the expiring cookie to replace the valid cookie. This requirement makes it difficult for anyone but the originator of a cookie to delete a cookie.
	
	The trouble is:
	Browsers that follow the Netscape spec don't send path information"
	| cookie |
	cookie := (WACookie key: aCookie key value: '')
		path: aCookie path;
		version: aCookie version;
		yourself.
	aCookie version isNil ifTrue: [
		"old Netscape cookie with no path information, assumbe baseUrl and cross fingers"
		cookie path: WACurrentContext value currentRequestHandler baseUrl pathString ].
	
	cookie expireInPast.
	
	self addCookie: cookie