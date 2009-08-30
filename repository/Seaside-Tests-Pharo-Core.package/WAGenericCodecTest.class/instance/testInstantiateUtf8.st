testing
testInstantiateUtf8
	self should: [ WAGenericCodec forEncoding: 'utf-8' ] raise: WAUnsupportedEncodingError