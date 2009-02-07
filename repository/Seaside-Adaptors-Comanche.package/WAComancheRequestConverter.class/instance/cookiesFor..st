converting-internal
cookiesFor: aNaiveRequest
	"Directly access header fields to work around naïve Kom cookie handling."

	^ WARequestCookie fromString: (aNaiveRequest header at: 'cookie' ifAbsent: [ nil ])