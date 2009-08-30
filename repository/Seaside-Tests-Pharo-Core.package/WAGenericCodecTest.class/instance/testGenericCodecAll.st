testing
testGenericCodecAll
	TextConverter allEncodingNames do: [ :name |
		(#('utf-8') includes: name) ifFalse: [
			| codec |
			codec := WACodec forEncoding: name.
			self assert: codec name = name.
			self assert: (codec isKindOf: WAGenericCodec) ] ]