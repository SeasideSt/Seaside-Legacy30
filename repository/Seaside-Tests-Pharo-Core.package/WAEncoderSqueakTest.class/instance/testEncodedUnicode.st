testing
testEncodedUnicode
	"this makes sure the encoder doesn't fall on the nose with unicode"
	| hiraA hiraO hiraAO ea |
	ea := String 
		with: (Character codePoint: 233)
		with: (Character codePoint: 228).
	self 
		assert: ea
		encoder: WAHtmlEncoder
		gives: ea.
	hiraA := (Character codePoint: 12354) seasideString.	"HIRAGANA LETTER A"
	hiraO := (Character codePoint: 12362) seasideString.	"HIRAGANA LETTER O"
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