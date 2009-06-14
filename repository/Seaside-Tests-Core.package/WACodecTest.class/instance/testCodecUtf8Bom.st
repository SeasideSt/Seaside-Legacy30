testing
testCodecUtf8Bom
	| codec bom |
	codec := WACodec forEncoding: 'utf-8'.
	bom := self asString: #(16rEF 16rBB 16rBF).
	
	self assert: (codec decode: bom , self utf8String) = self latin1String.
	self assert: (codec url decode: bom , self utf8String) = self latin1String