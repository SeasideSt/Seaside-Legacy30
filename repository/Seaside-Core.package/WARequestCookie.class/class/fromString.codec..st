instance creation
fromString: aString codec: aCodec
	"Creates an array of cookies from a HTTP Cookie: header value.
	Here for Seaside 3.1 compatibility"
	^ self fromString: aString