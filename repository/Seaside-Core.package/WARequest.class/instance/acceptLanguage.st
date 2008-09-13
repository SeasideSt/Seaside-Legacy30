accessing-headers
acceptLanguage
	"The Accept-Language request-header field is similar to Accept, but restricts the set of natural languages that are preferred as a response to the request."
	^ WAAcceptLanguage fromString: (self headerAt: 'accept-language' ifAbsent: [ ^nil ])