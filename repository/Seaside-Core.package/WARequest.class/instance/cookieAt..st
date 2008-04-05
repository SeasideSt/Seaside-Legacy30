accessing-cookies
cookieAt: aKey
	"returns the first found cookie with the given key
	there might be several cookies with the name key but different paths, in this case use
	#cookiesAt:"
	^ cookies ifNotNil: [
		cookies
			detect: [ :each | each key = aKey ]
			ifNone: [ nil ] ]