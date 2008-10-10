testing
testUtf8BomCodec
	| codec bom |
	codec := SeasidePlatformSupport codecForEncoding: 'UTF-8'.
	self assert: codec notNil.
	
	bom := String streamContents: [ :stream |
		#(16rEF 16rBB 16rBF) do: [ :each |
			Character value: each ] ].
	
	self assert: (codec decodeUrl: bom, 'ÃbÃ¨rstrÃ®Ã±gÃ©') = 'Übèrstrîñgé'