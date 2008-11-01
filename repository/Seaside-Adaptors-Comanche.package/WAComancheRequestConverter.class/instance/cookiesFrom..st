private
cookiesFrom: aKomRequest
	"directly access header fiedls to work around naïve Kom cookie handling"
	^WARequestCookie fromString: (aKomRequest header
		at: 'cookie'
		ifAbsent: [''] )