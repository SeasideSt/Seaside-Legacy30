tests
testGreaseIntegerOnCharacter
	"ASCII (1 byte)"
	| oWithStroke euro manna |
	self assert: $a greaseInteger = 97.
	self assert: $A greaseInteger = 65.

	"Latin-1 (2 byte)"
	oWithStroke := self decodeUtf8Character: #(195 152 ).
	self assert: oWithStroke greaseInteger = 216.

	"BMP (3 byte)"
	euro := self decodeUtf8Character: #(226 130 172 ).
	self assert: euro greaseInteger = 8364.

	"SMP (4 byte)"
	manna := self decodeUtf8Character: #(240 144 140 188 ).
	self assert: manna greaseInteger = 66364