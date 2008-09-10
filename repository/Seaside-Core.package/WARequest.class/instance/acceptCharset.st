accessing-headers
acceptCharset
	"The Accept-Charset request-header field can be used to indicate what character sets are acceptable for the response. This field allows clients capable of understanding more comprehensive or special- purpose character sets to signal that capability to a server which is capable of representing documents in those character sets. "
	^ self headerAt: 'accept-charset'