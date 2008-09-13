accessing-headers
acceptLanguage
	"The Accept-Language request-header field is similar to Accept, but restricts the set of natural languages that are preferred as a response to the request.
	
	Answers a SortedCollection of WAAcceptLanguage with the value with the highest quality first or nil if the header is not present."
	^ WAAcceptLanguage fromString: (self headerAt: 'accept-language' ifAbsent: [ ^nil ])