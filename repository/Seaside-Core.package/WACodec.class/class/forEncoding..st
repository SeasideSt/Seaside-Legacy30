instance creation
forEncoding: aStringOrNil
	"valid values for aStringOrNil are:
	nil
		switches off all encoding, like WAKom
	aString
		any other encoding supported by the dialect"
	aStringOrNil isNil ifTrue: [
		^WANullCodec new ].
	^SeasidePlatformSupport genericCodecClass newForEncoding: aStringOrNil