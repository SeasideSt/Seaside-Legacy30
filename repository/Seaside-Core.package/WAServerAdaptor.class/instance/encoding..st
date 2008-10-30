encoding
encoding: aStringOrNil
	"valid values for aStringOrNil are:
	nil
		switches off all encoding, like WAKom
	utf-8
		uses the utf-8 fast path by Andreas Raab
	any other encoding supported by Squeak
		uses whatever TextConverter Squeak uses for this encoding
	see class comment for more information"
	codec := SeasidePlatformSupport codecForEncoding: aStringOrNil