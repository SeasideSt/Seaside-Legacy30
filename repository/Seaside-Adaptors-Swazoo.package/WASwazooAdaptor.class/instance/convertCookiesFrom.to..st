private
convertCookiesFrom: aWAResonse to: aSwazooResponse
	| cookies setCookieField setCookie2Field |
	cookies := aWAResonse cookies.
	cookies isEmpty ifTrue: [ ^self ].
	
	setCookieField := WorkingHTTPSetCookieField new.
	setCookie2Field := WorkingHTTPSetCookie2Field new.

	cookies do: [ :each |
		setCookieField addCookie: each oldNetscapeString.
		setCookie2Field addCookie: each rfc2965String ].
	
	aSwazooResponse headers addField: setCookieField.
	aSwazooResponse headers addField: setCookie2Field