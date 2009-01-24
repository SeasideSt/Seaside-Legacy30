private-cookies
handleSessionCookie: aRequestContext
	"This method encapsulates all the session cookie detection logic.
	1. If the application doesn't want session cookies or we already have session cookies we do nothing.
	2. If we have a session cookie we note that in the cookiesEnabled instance variable.
	3. Otherwise we add a session cookie. In the next request this method will be executed. So the cookie is always added when the application wants a session coookie but the client doesn't support cookies.
	
	Wow, this method has almost more comment than code, clearly a smell."
	| request cookie |
	"1."
	(self useSessionCookie not or: [ cookiesEnabled ])
		ifTrue: [ ^self ].
		
	"2."
	request := aRequestContext request.
	cookie := self application sessionCookieFor: request.
	cookie isNil ifFalse: [
		cookiesEnabled := true.
		^self ].

	"3."
	aRequestContext response addCookie: self sessionCookie