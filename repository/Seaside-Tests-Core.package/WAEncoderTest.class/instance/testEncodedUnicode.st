testing
testEncodedUnicode
	"this makes sure the encoder doesn't fall on the nose with unicode"
	| hiraA hiraO hiraAO ea |
	ea := String 
		with: (Character value: 233)
		with: (Character value: 228).
	self 
		assert: ea
		encoder: WAHtmlEncoder
		gives: ea.
	hiraA := (Character value: 12354) seasideString.	"HIRAGANA LETTER A"
	hiraO := (Character value: 12362) seasideString.	"HIRAGANA LETTER O"
	hiraAO := hiraA , hiraO.
	self 
		assert: hiraA
		encoder: WAHtmlEncoder
		gives: hiraA.
	self 
		assert: hiraO
		encoder: WAHtmlEncoder
		gives: hiraO.
	self 
		assert: hiraAO
		encoder: WAHtmlEncoder
		gives: hiraAO