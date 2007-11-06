private
compileText: aByteArrayOrString selector: aSymbol
	"Compiles aByteArrayOrString into a method named aSymbol that returns aByteArrayOrString as a string literal.
	aSymbol
		^ aByteArrayOrString"
	| code |
	code := String streamContents: [ :stream |
		stream nextPutAll: aSymbol; cr.
		stream tab; nextPutAll: '^ '''.
		aByteArrayOrString displayString do: [ :each |
			each = $' ifTrue: [ stream nextPut: $' ].
			stream nextPut: each ].
		stream nextPutAll: '''' ].
	SeasidePlatformSupport compile: code into: self classified: self methodCategory