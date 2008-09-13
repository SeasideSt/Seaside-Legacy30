accessing-headers
acceptEncoding
	"The Accept-Encoding request-header field is similar to Accept, but restricts the content-codings (section 3.5) that are acceptable in the response. "
	^ self headerAt: 'accept-encoding'