testing
testAllCodecs
	self assert: WACodec allCodecs notEmpty.
	WACodec allCodecs do: [ :codec |
		self deny: (codec class = WACodec).
		self assert: (codec isKindOf: WACodec) ]