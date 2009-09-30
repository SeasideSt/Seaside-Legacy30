private
decodeUtf8Character: aCollectionOfIntegers 
	"Decodes a collection of bytes into a single character. We have this so we can avoid having non-ASCII characters in the source."
	| codec toDecode decoded |
	codec := GRCodec forEncoding: 'utf-8'.
	toDecode := String streamContents: 
		[ :stream | 
		aCollectionOfIntegers do: [ :each | stream nextPut: (Character codePoint: each) ] ].
	decoded := codec decode: toDecode.
	self assert: decoded size = 1.
	^ decoded at: 1