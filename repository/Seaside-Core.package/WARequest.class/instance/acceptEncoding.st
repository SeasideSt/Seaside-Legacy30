accessing-headers
acceptEncoding
	"The Accept-Encoding request-header field is similar to Accept, but restricts the content-codings (section 3.5) that are acceptable in the response.
	
	Answers a SortedCollection of WAAcceptEncoding with the value with the highest quality first or nil if the header is not present."
	^ WAAcceptEncoding fromString: (self headerAt: 'accept-encoding' ifAbsent: [ ^nil ])