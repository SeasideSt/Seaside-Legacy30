testing
testNullCodec
	| codec readStream writeStream strings |
	codec := GRNullCodec new.
	readStream := self latin1String readStream.
	writeStream := WriteStream on: String new.
	strings := OrderedCollection new
		add: self latin1String;
		add: self utf8String;
		add: self utf16leString;
		add: self utf16beString;
		add: self macromanString;
		yourself.
	strings do: 
		[ :string | 
		self assert: (codec encode: string) = string.
		self assert: (codec url encode: string) = string.
		self assert: (codec decode: string) = string.
		self assert: (codec url decode: string) = string ].
	strings do: 
		[ :string | 
		| binary encoded |
		binary := string asByteArray.
		encoded := (codec encoderFor: (WriteStream on: String new))
			binary;
			nextPutAll: binary;
			contents.
		self assert: encoded = string.
		encoded := (codec url encoderFor: (WriteStream on: String new))
			binary;
			nextPutAll: binary;
			contents.
		self assert: encoded = string ]