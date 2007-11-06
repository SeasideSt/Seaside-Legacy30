accessing-cookies
addCookie: aCookie
	cookies ifNil: [ cookies := Set new ].
	cookies add: aCookie