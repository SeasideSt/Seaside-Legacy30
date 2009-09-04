testing
testEncodedUnicodeUrl
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
		encoder: WAUrlEncoder
		gives: '%E3%81%82'.
	self 
		assert: hiraO
		encoder: WAUrlEncoder
		gives: '%E3%81%8A'.
	self 
		assert: hiraAO
		encoder: WAUrlEncoder
		gives: '%E3%81%82' , '%E3%81%8A'