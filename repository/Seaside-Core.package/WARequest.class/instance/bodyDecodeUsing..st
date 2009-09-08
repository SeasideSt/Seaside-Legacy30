accessing-body
bodyDecodeUsing: aCharSetName
	"Answer the body decoded using the given character set name. Answer nil if there's no body."
	
	^ body isNil ifFalse: [ (WACodec forEncoding: aCharSetName) decode: body ]