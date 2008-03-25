accessing-cookies
cookiesAt: aKey
	"returns all the cookies with the given key"
	
	^ cookies ifNotNil: [
		cookies
			select: [ :each | each key = aKey ] ]