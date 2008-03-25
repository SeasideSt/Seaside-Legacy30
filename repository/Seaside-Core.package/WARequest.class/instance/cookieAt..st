accessing-cookies
cookieAt: aKey
	^ cookies ifNotNil: [
		cookies
			detect: [ :each | each key = aKey ]
			ifNone: [ nil ] ]